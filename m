Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CB9136E3F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769397234; cv=none; b=N/UwOStcfQVZYeE9bTBZdJObj6k2gWLqq/aKeoBxvkd3EKsCJRE7fgXgcVr2CTB8Vtbl2563NbQ49VR3hNqOTjAElxix2/5Lh9iYsNHgM4qBgTx/OCD6RCAaAU/Mj3UYJAw4Jv883Xt+iPAGW0ysmcNhH7j7xlJBTQHjNvUJiv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769397234; c=relaxed/simple;
	bh=tL1NlJlQY+B7+hkoa3FB70VUl5nE0FUDyMHHldBOs04=;
	h=To:Subject:From:Message-Id:Date; b=UU5lC4s/HG57QLD2WF6N+SlAeUY9ayM4yY4M+an9y3sHcMELSqMOFuK2KtEdljgEcFvLb/MNNOFYEnhalDtm8f8GAqV4sWcxafEkhS3kiv+MeFRuiDm/GYYHEKXBKsa9V7LvGE44XK4M16okQ0SBPDZ6VwPlhIsIAre0AqaDbfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2Fh/EOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2Fh/EOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8706C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769397233;
	bh=tL1NlJlQY+B7+hkoa3FB70VUl5nE0FUDyMHHldBOs04=;
	h=To:Subject:From:Date:From;
	b=O2Fh/EOcJ51/nJisDkwYFYNCdqc1hVPCF8/GmiIMrWX7fpS0blAxxXeo7/nCCBed8
	 O0X8D4OMO37pku4/C+rnH6bBL24L7uH6XSB45KvyEJmosCAAPh+Hv5T7eYbDt0TgFH
	 TUg3iazxtSw/6Ts2L5OLUZDdYGAPtBdOsy0sW6gphAxds+ixEvPB6Kq9bTZ5K4zoUY
	 d/jmtgw/mIgMiH3EFsJa1ovJCNHdSboQP5ifKuQHUNHYKRihoTWpxV02WJ+FL4mWSj
	 kVBETPri24MdiwwCFsm1d/gKc//US58eX+rOakae3Q9JK/mhNdMGWxl/lDKdak9WBP
	 8/CvvID+aWxeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CC0C88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939723358.22230.4147611463585821946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893963a605bb087541ec1d58465d24c5bdfc5e23f35d470ed345773cfdf094ab
Date: Mon, 26 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769397233
