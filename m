Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4354A1A5B9A
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739621934; cv=none; b=ZYJ0VR2W2FsRO6Nxp/Tx58kUA4U9t1AUb3vMM5F+RBw56Gql2G4Yh9xMSRzUS1/ogKbgppgKPzIBxsDLx0EP+9geaCWGyKwZ1gjOFo97Xp9+ePlzW0jJbeZnfzx9QnNgaI+TEOzuzIqTLuiY/o6CKjsqs613YhTkSD6DJXSILCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739621934; c=relaxed/simple;
	bh=bHfdoe2fRl4piODpiQF8AxNGgrHJEaTdT91EMVwsqKk=;
	h=To:Subject:From:Message-Id:Date; b=Zn5NyLsDiXbXfAOEkgjLzcHzllBqmSaxD+SL4amixHEjdGgeZOSzegHRxsi21eGYiqJcCevy11oz5/kSaGLJ0fBGKPW/ny+hwiwPUn026Bqr8ZlX1fV7WsYffXBzoMJO34qpqytgxQREZrQsKyZkcstTJ4GpQDSAEtNEV+kPjUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbfZIcTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbfZIcTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A80C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739621933;
	bh=bHfdoe2fRl4piODpiQF8AxNGgrHJEaTdT91EMVwsqKk=;
	h=To:Subject:From:Date:From;
	b=gbfZIcTtTZl5r3Ld1r1vMIwqzcdKA0lKxkVcU6vqKo3ooZe0+1HF47rdgVZ2+o0Ag
	 3ZzdRju06rh4CPmNPeDFtDx5QfvKhIkjT+3MN6rptR5xQWUhzga82NTa7uQKhcBJso
	 zaxdaONHLmiUwnulpARzI9dtVfxEvlttpMZ64HFnhrDQQ10DAmZIKSLrbv0wDt36EY
	 XoeF8qQEDV72E/xCfuHPvHTtJRQags6KHwSiadqzSs/7vqFJnI3rkiiLnx5WZvXqTf
	 +iBHtStI9JCT3e11mhZoxd+wvpkuGpfbiBI2EFZkntMElJNe1aWpEP+UmG5Pj0yvoe
	 EmIW5F+B5L4Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169CC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173962193358.26500.16585231025432048661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccfcebeb881d1d8fe911712472d51266490960e701841f2e977403d9423ff487
Date: Sat, 15 Feb 2025 12:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739621933
