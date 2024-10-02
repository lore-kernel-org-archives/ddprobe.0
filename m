Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1CA79E1
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727833554; cv=none; b=kU9sSEKNfS3B4Zi29+4X/N19mf10fbTh8shuF+s8UchGf6916WIzqN+qNgsDpFI0D7lBvIJkFMRtN3c5ITabcd+t/WGLx/uOkteLjxKXPVsHoE78K1S79gjHKfztS9YxJTu75jbL5ilPt/7SfM0F0w3/O9I6z4aeqRIu1EyYE+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727833554; c=relaxed/simple;
	bh=rYwVIWHvdEn+TR/RndwG5RnsM93j5GRdM+TuQ0nuXn0=;
	h=To:Subject:From:Message-Id:Date; b=X3AD5xcl2gi2E5iER42h2jlt+9WxLjreUCTXx7mJ5nK5oYgEkSbGr5Z9kY7EWWYPBuJxpMXpkE75yst+qqJXM9iLePqvitVcFhl0VUMtQJTS1Yc+JWHy3ClnSF7O89LSN6BAQoSj42xQMOuu9QRvUMFjDxVThzhkQFw/AOvrKqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vopbl8ih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vopbl8ih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53B2C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727833553;
	bh=rYwVIWHvdEn+TR/RndwG5RnsM93j5GRdM+TuQ0nuXn0=;
	h=To:Subject:From:Date:From;
	b=Vopbl8ihceObwuqSjMZICG70dPOYifRuYz74pjnWFuX8lq2qFz75c2HCLn5CYHwA7
	 6LBdNAy4F0/DBS1NtKFsyeShjV3YBZiTUcSAiWrk7mSzF0DwqE5r6vLfMlDWZL1aqU
	 9jXjpV+9JtyE+OvBAh+5mcRJaxnN4OWdc91aooqVwW2n3ci/hHS3hiNu9J2GiQXzYW
	 hnTiWWn/AO3Kk9+XtVg2C/HYqtMqvHWL6Z1418oue0OVXdhjU0B4s6Qcz4gwxJ87H8
	 Myq6OgZTiR0zHz+c5PvU749VYh6jkseuQRJWyDR78n6KpxhqK0w0D87pMaND+nGwzD
	 DhObVv84MaQWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FCFCF318C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783355361.4535.6431484940789736703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc83f69bae366cceacbf526c16d197a0abc30f21bb52271b37f5ab12492db8ad
Date: Wed, 02 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727833553
