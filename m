Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2642DA766
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749908993; cv=none; b=mUtCOj5VEI0DENPQWbCFHHInwY9/Mf1i9fb06Xbhyq1y7zBiJTdEZVrU6mEfJU2hzRpWAd/hGMIrrNoKPE49LG+UCatUZ1Fo7rXnyROnrB89bjLammsD8CA3OZRSRsXEZ/pkQ9wlSAEw//Cpby37ECo+TKAMI77d5qwqsILr74s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749908993; c=relaxed/simple;
	bh=Qh52lAl+/RFrLETX/DZ2YpR+583rOsANZ/eEO0VGpN0=;
	h=To:Subject:From:Message-Id:Date; b=uOsP9d1DlqISEVGnYWwSxoqG53bv7ClRZzFGu/Cc42J/gUZeBYewdz2lLGMe3S/SpNcf3jXfLEarcqFREc+2RMPDGotaPGsl/6Ut4ziqzwaoTrFi21VQYWY7YxVhW1USR9Q5t+Ucvw4XYVqBxHjD5J0FkWx5Dg93LKU4EG84VWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ca3Qw7fW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ca3Qw7fW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43EDC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749908993;
	bh=Qh52lAl+/RFrLETX/DZ2YpR+583rOsANZ/eEO0VGpN0=;
	h=To:Subject:From:Date:From;
	b=ca3Qw7fWrr9K71nqnQnyHph4CbWrcpNGHQFwQrbC50xTjlsFf6ajtJEoAFinBGHeN
	 9dgzlCUo9TFVb4g5M4qI+bYJQjY68cDb976r1D2djdyJh3fNjPJ4HjVNKpy82otJo5
	 rAgWLqlffYcOMrkpRbKloRdqD7XIQzSx676pmNkQwG2TLSt4BGacp0RH9I8mHYBHse
	 giVRLfOzlWAy62bH3sbcvZzV8Aza2TAmCnxBYAX+E0l55SkHOkzzfM7E2gcHX53A/m
	 jD5YPq0P0iiPSaKE8mmS8qxZkiOND98lDdHdaCot2AaBkgYlB8vf386Rn+RbjQKNya
	 cpnfV2EU9+64Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4FDC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990899357.27843.14336066655009344706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157257f767b1cf17a417fb9f8af90f5442c37c4ecb0f0f6b41ff1bef80a02f60
Date: Sat, 14 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749908993
