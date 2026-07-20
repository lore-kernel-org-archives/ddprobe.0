Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F70C3B1B4
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784584714; cv=none; b=TLqcPjDgK95BeUT2dcw46AsPn/ii3Wt4B6/97VgZyMo+abqQSHol9+2e0F0rPVjfChk7Y+iLZsPKlNuVCKa0CMpydwtdYSJU11eDMDkWYR+Sz4ZGS7EDS3jUPLbMDlpy3O2UQilVNLBTgXlUttYQnopF3DBdjwPTR4xHi0zJf/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784584714; c=relaxed/simple;
	bh=XEGXtVCBfScJFKdST/0FRXI2WEpI51CcUuWoPGYXk8Q=;
	h=To:Subject:From:Message-Id:Date; b=M/6kF4L2qcju/lAKjwP2/47IkSVzdSG0/v4gw6ogG9p+2v75BrLdqWejyJaFJ6h5MhIxq3RZ7vbGJ54cxz7I+f7mSgBbxVTFBRtfJ1WwRwZvUmCKNHkYCC+vKwOTzffC4ry7Px1NR/aGHK474avAye6b6f4WTY0gADg5exD7/yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSMIKnf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSMIKnf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52C7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784584713;
	bh=XEGXtVCBfScJFKdST/0FRXI2WEpI51CcUuWoPGYXk8Q=;
	h=To:Subject:From:Date:From;
	b=hSMIKnf3FUA58UFODYIIDwpeTxQXIWvVaYRMkh72aovmZhFQESHvKMuLCVR4gLDlc
	 2cubRIwoOFYpSv5bDLOrIEXRqaj5uvglsqGmMgRsijKclz6ktLfHqytRf3HMe66Oq1
	 dSBpAVMNLYnFOSlBljDWAzV7dvhdLwrEewfB6XgxfHWhbOKUsmsQFM2Qu0/zGEs9lM
	 /8jRQtaZ0AjNNgVv0gD5jOKni9/4hP1O30A0wAaS+8jExUFjXzky2N3co/NUsam1S2
	 nybaUYa7aWTzzrO+6URVpLY9Pu7mApamJBUyKnYd+JnqyTL7HKpmbODE8v+/wJBJS9
	 Pi1ocic3i2osw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE8BC44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458471368.6585.10278009764083125292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cedfe7bbc3d799412bc38387e33c31f1477e11e78622290a81c936c37cc6bd8
Date: Mon, 20 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784584713
