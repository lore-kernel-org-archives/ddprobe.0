Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F042673B7
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763742114; cv=none; b=q2Cwj/3Is3kIkUUBAvvWyBGKUgRh46N+Kb+Hjc/2rvT+KJvumKfp9l7raOLvrhiT148juvvM/pSuBCM4+Q61+ITmHuAtkZS0b/wPqb2BoyBPropyTrYutBaW5CIIUEvDOh8RoqiiTdoPRhfws0iC1vjPfqa2KJ5DLZUzz7WyYH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763742114; c=relaxed/simple;
	bh=/Z3k5/AbRA1KilZoXQxVWbHNOkkcJNLSOyp9tgR6prQ=;
	h=To:Subject:From:Message-Id:Date; b=aHt6ZFC2IBxRDuA92EI4tJJ74ZhObK6uGgBUsrDC/BcRmfW79K986DB8yZ9gICCt/ddy6yvPN6k0ST8bHTPTKC42j2CmcCnu7Ndr+aiVNyu8xHPvf59JQAookBiAbRRmZnGFeZ8/HB9yB5oOm7H+a4ueAK8C8PmpdEhdFUk1c/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdIYR9cM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdIYR9cM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31E3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763742113;
	bh=/Z3k5/AbRA1KilZoXQxVWbHNOkkcJNLSOyp9tgR6prQ=;
	h=To:Subject:From:Date:From;
	b=cdIYR9cMtVOy31l4URd7eOk0d97l7Je5o/6Njoch/SN4SmQP/TIIgfNdrnE4X5iR7
	 vRxBmiSGCgn73DPsVJqGcgmZzRnrRa5nxYBbbQW4BANiKUPGhQu0Um+1sONVA1Cop3
	 EDcWkWwfTCIMGDGJ+L1AjpRs0BOEBP+JUiuX1Snhls2RiB0VlIfaHZ3dzWbgBIut8h
	 eOCLM1hFzgdk4+UWuFyfqLmSh7PLbJmFjFgfvbleHQJnJY9th1Xv8HwpotunAGZ7DQ
	 wAELmPt8wbUgopYLcXa6l8SO4Ju3JcsCSDZ2uvHDRioMvpt0gKZOkr9xNnOWLqwxhr
	 AoAdFcCIY07Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1CCCFC28C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374211363.14994.3962266207441491249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 122175e694887a84e4a3d7e00552f1f73384f54d85a02ffc46d6e42baf8d6a03
Date: Fri, 21 Nov 2025 16:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763742113
