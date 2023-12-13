Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5EE67E57A
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGq6sLqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76095C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702502896;
	bh=ggCBymhfA7Qkbo4Rpoea/nk4xTsTecrUykQVbVzmul0=;
	h=To:Subject:From:Date:From;
	b=QGq6sLqUpzs+w41mfUaOkl3wTgNA6D2VXYGq2+mSCyeISILncw5ODWRwyWtjrnFrS
	 AfKF2t/+BT8oylCISkA0zAKvGu98Gvifp72+USOHfGDgYJNwFsZ0hjdtWhZ9uKCsyh
	 rkSdLE6uYT3GqbVzE5A/Ge1kK2vyW+C+yt0xgnPaUq7p+8Nb/433TClCxZUkA9xz9R
	 WW4mwAfqoWauV6Qeqljxj3ShUsMafjtNeYxP4J+PBrYeu2whBWjAsJaoyzRGaX9Aw2
	 a8DkRZppDuhZsbGrV7fEGHRiCDHyBdSmOGNtvHgRicWuGZe0TiZdd647SnYe3x28QP
	 pKlOt9ks5ik6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C289C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170250289636.26287.16429946866551376402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141d13b14c1c52f333e28e32d1444075fd5b28840913e0d98735857da3406369
Date: Wed, 13 Dec 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702502896
