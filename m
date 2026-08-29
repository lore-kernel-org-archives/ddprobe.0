Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DC5343896
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787974834; cv=none; b=qa3Bv8ZY1LcX0WMPMaf4F8muOg8aS2uEav5UtHJHqeHg5Etitl0ZKrCd1tCaa+muRsm4X/UPOwzwWtuIn/7jwzdu8Mpc/UCyo27k7+OG3s+aZipS3YZ1z2f8K+Co8IQ1menuwAY8rXNBLcu5wgTYzrKHAQu85KmzqJC4Sdoqjww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787974834; c=relaxed/simple;
	bh=oyyRWs1e0JP/aWf4vHVKLj5PbOpD5ldPdLG6gSD6FAQ=;
	h=To:Subject:From:Message-Id:Date; b=SdUKP4DRESbohg9on01IVwuGa9RW1gGI9z/gjfyL6eN5nhdDUgflUjIscZZjLYR5HHSUtussdOesvwF9au0h7Ku1XZcOLUulkRxgSFUi2/1E8Aeijkb9Fiif/atXGrqyXRt7xNsks7NH/vgENZi4pEMrzcbt08BWqgpSncyNcTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExTrzRhB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExTrzRhB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F53C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787974833;
	bh=oyyRWs1e0JP/aWf4vHVKLj5PbOpD5ldPdLG6gSD6FAQ=;
	h=To:Subject:From:Date:From;
	b=ExTrzRhBJfygqvx8VsHA4QvkOu3LpcgAIPJmMq3+MQVCXn1SE/2hOn9wSJgFzhf2T
	 cXHhzM2bYpTvi3lfhlb3WEJKAQQOmMfb8vlVlYMwKtamIrJv/iITBGneuFVZbhpAGV
	 GSxgKemhGEB27CR2Hf/HhHdc2Tp/iSoSqAgWNnmJ/cbTLtQbRWDQsQDhzRJPqBabXI
	 sD+GkJWTVZA72RfT78/HJ3yyphQyFjN+D8+wHs/lxhM7Y2BEblqzByMpigaJyqcTMW
	 XJQCx5jk0LgzbyAJ5dR2a4PhKf0oTkW1FylnAon5hToYF656VfAp3yHrbWhGb2xMlp
	 4I3kVy5kXN1Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0902C61DD3
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797483368.16506.9751866574309492010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c582c2dc93e5a71d26211096c508bc101a538534e7ac01c05f280cc43519e4
Date: Sat, 29 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787974833
