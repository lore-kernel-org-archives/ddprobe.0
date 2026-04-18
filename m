Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A22530E83F
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776529654; cv=none; b=EgI2CMylO2QWan58S4ehFc79Bp+kxd7Uegh/I1I9985A/GuO5+Vm+USYdLj6m5i5eMv7GxlR+q7GRzt9X8f47OUOHrPq1XAE2/UydIFvNmxMAW/lGXHkaR+jXeFZFLCfjjAbOmv6lr54s0YwuAfO9qCzW4h2Bxe/ZfEDwsLJZNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776529654; c=relaxed/simple;
	bh=ndZ9Gwllhn1FZcMP9dYTvpUlXdTeNVPsOmM8vW1Sfx0=;
	h=To:Subject:From:Message-Id:Date; b=hdyy9/amZevUtNVwVxFnlP2K+Nmw8xtL6UZQnarfE/Q1l2VZNB4hrVA6RAiC3sGUIFu1UVGtPqcOrebvCBgRlWGZT2wCWxCXp+2CAzkU8iGW0BaccEDLWOtq0PeeH26DRV18fKY0/DWgKrMuMS1oxBx64lJcqC1VhfNNUKgC6O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSPwyYvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSPwyYvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4140C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776529653;
	bh=ndZ9Gwllhn1FZcMP9dYTvpUlXdTeNVPsOmM8vW1Sfx0=;
	h=To:Subject:From:Date:From;
	b=iSPwyYvhpmCv71cy7eYTBktOwXIkLNBrN4grRVCnMN8G490IheKDT69zqNNRWmK+e
	 hqpzhwvuYLoOZjMjG01rw5Lns3b5Ig4seF+4sk5qubuSf7h0VyrKUjnYpMmY8sVoCl
	 qUW2lfgW+7LutA2Z+tpV9GvqlAmOdsf4RYR22OWHRQRVtR1nU4a8ZiHMCYuj3ACPlO
	 1BCTnomtTg0s5g7JaSpFROWCUXGboA2OJB5IwaTLVRZFqKpw7HJ977+/YXRyefn9wX
	 XAMcuOUHEbaiBsVrAtTmVRojR16ol3Q0ct72vcTGNaha8iH4rVqy7ZkiLF3Abe6e0v
	 AIXqG+oPyh4cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAA8F99C88
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652965368.30365.7867049576642744730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0a6b624174336d2bb8e20490b8eab0642d0848783d6bb1173712fab0de8033
Date: Sat, 18 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776529653
