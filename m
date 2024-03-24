Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AFD1A38DE
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711256897; cv=none; b=aKAUZMX8s/qrrFSfSm9dZxx5pZstpRxPj+UthXYzVOaQAn71lKZarIuHSLrJLMt+2uU8PWnD0hDIcNnADfYILvCq7oZF7M+2aZQxnRZdGGX7NaTX46CpstoU6oUxP19KaygtQprz+XmodoRMZywLa62LwlL5BReFUVW9Nu2N0XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711256897; c=relaxed/simple;
	bh=Sk2uR3yjORu5dIYO6C1Mlj70fwY6Op2u4l1rcfTpt/w=;
	h=To:Subject:From:Message-Id:Date; b=gmQw8lOIoQ685f4jHZo8UeiscE5Zf9JN2gX/pOhfj5wK0i2Wz/nDj86iz8CUDlglKxUE5PiPZBA0UhUaCigdkOF5KGR8djQJ0MOeB9WyaTwGSeCnWzN1dcyeejo9QTLbW/0KDKzgZXwviZACsjSQ5o30GSzU+NBLb8qhwr1i0BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBe/prbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBe/prbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB59AC433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711256896;
	bh=Sk2uR3yjORu5dIYO6C1Mlj70fwY6Op2u4l1rcfTpt/w=;
	h=To:Subject:From:Date:From;
	b=dBe/prbQky6d8uFUch7VaK7ZuAsPbeW/9kALgyTDd/Hb5zWcBMeJY48heF/QjJ2RL
	 Hhn5aqwlLdKikCVBT0BpnMtzZBo3TZmKPaQ06UKNr5QonusQTL5K0BVQnd/Mgg4qL9
	 QiInj96nTugZGkiw9blLDapqw6OgNCOj3kUyzJzTHGmDZoshjEKD4PpBjoKGNsgn5S
	 ywiv3PQBhipoxGDEo3UG25krLI4QGepQmxpEIOViBqVmKechI4+MnqeoEuabxGq+V/
	 JffO8/YqsAjMJyHDMo9XRuR5RH+9rRWZRWj1waw7r+4zVDZ1o/I0yuDpEfYbBXE1Xh
	 wfMLpR7bJd2RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97614C54E58
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171125689655.16626.14123337199452189952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c54de39b837506e80e16dc2aede53b9246656040ac71247c81df6da119208f9
Date: Sun, 24 Mar 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711256896
