Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18992152E12
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736413554; cv=none; b=pom0dkDRnH4nNNmezOz6ImWjU5VC4T6t12d9TbO3A6v2sMnbZs+eXQPHqYn2N/+KpRs+3Fg8/HLRgsgnVBL63lgsQganfyoyxbUb54ZRcShiS8ssAEi9a1TgsyM0GST/dEdgM8Yc+JXafNpPh6ZZXmxQHx279jsCLswm+u/pmmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736413554; c=relaxed/simple;
	bh=UgZGmn0cH/Pz/MD7ynDjgTAb6DMIOvOAHKBvmWrLV8I=;
	h=To:Subject:From:Message-Id:Date; b=D/pmRXiZ9eG2LZ1s1M2qRCKXwfsIdLn5Ts/z7VL4T26Xk6qzSN77co4fjHQWTP/s8dh0etwommUycV1ePRXdqgozwY+pVPMu8WQMENzSQnsmo6nkQ4gPFFgYbxbn2dG8UuzzTh0Ztqh/karYRsG+tcU/i/zH57CxGhEs8tibmrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ef6z6rBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ef6z6rBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2373C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736413553;
	bh=UgZGmn0cH/Pz/MD7ynDjgTAb6DMIOvOAHKBvmWrLV8I=;
	h=To:Subject:From:Date:From;
	b=Ef6z6rBvWZFvKVRd5QCsyt2wfiEBF2pw4Pa6WXeDcJ6tU0cDkb3nbmR493FClSUFE
	 03oEyXGzGsuiCOYnSd1tTJ0wEZHt+R+KxW3ZI23u/KxVEyF/jKz422lWKhFUC4n/6v
	 tG9kdkCVGkNQCberKGV6bckeazIZ+oybEJTDxIZ6cH9KlPpSQ/dBMawIeJL1CGGtjH
	 J0OfyKkWfFLT30yCABkRMVDCsAKFXCjflhHD3SEXk+NKrOXZ1TrRbZzsaIatBHJPE0
	 HKuEVq5GE7UrdDXG0CNyo03NEh5uIewMT0RwTVqKMh7318LUzz68tB5Wyf7MS5cthQ
	 W7BpKuYYQQH5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AEAE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173641355358.6976.18050505673684311054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36594cf977ce82e560dd03e1196ecc68097f56ad1ae70b37324ddabc25c1ee97
Date: Thu, 09 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736413553
