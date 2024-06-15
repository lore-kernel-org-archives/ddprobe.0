Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D3A49655
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718476103; cv=none; b=FBfa7CmbGNTCfuGd+2oXsXynSX1ssRysvTrhCrL2X3HSq1ojtexdV36hh4BeIpgS9VJ34wEEun5sLnaeab14bVU3+z05ik4qSYLnMJKXqa0OoQdrMSVBgrKJNPjRwOB4GxYngaYF/1dQ25Baw08US2a5KDQFSvslH4YAjqY7MlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718476103; c=relaxed/simple;
	bh=aj9J8x477rkEzD4reCtHpHwgF/bQMbY8rCmRhEe9+Ik=;
	h=To:Subject:From:Message-Id:Date; b=FqfmVq5DKOUTsjBsPmzFBEHxtGzVQ002sCn0E1EdWskAvHEQerxc/Uc6gMJUmL04zx8qpfAziF1Q5G/8EuzRS70mBHaka+LLOAKbUVkMVAPjdtTOqUxeijWumqV4sZV+7hVCiQVWPiTP87lvZ7VgL0rat/QFj5B3FmvoZN8oHR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfXWotmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfXWotmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E53D6C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718476102;
	bh=aj9J8x477rkEzD4reCtHpHwgF/bQMbY8rCmRhEe9+Ik=;
	h=To:Subject:From:Date:From;
	b=HfXWotmhCgGYy0Nofqm/7EL8xBriNq4io1NKMrUgP8aufbhF4W4lZwf0DqUvwKzLr
	 zISDjonKiCJ5F4kLH5UEu0iyBxcbBnnW/zTyqsQ2rDJ/hF1UtJ6Dt1Xgldb/5XpgPB
	 QpIbHlRJiIUNCDIChDyM69sPqJS3qfC2pRuhkhGthcNswAA4hNf69BfOxGx9nV/zlL
	 PDlwt8Avq7G2j03mHpAUnpVPFsE7l7h89wIckNxq/zClhiuba3VXee4zOX9tnIFSXI
	 t/PWPxlpgRoDTjzE6yqmXZ1t0H5JPtKOnqMWBNNrmpCgecFImgSVmpeKMPVz5zDAhK
	 Yr5F5Tja1cDTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBCF7C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847610280.27745.8993880162619562551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c9ce8856fb551551a81769995c46de59cd754746f646e826b14c6a74806e42
Date: Sat, 15 Jun 2024 18:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718476102
