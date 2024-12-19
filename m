Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C92B3C0B
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734593754; cv=none; b=rm1/xVS0GjDYFCUfreGDOWXeLXxZdVb6VdGqxRsMHHyedRMja9QwOGe+GO8jmEuyOd60ZKLqbA/91QAK/haIkTZu38xXEqyBu2lkNIxymkI0kbJqSF5/UbcGqWAKCkKdiw0k1OEPEhsoYQhzxkJJu0hKaGWHGVcapvGDqxYcTX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734593754; c=relaxed/simple;
	bh=zjlJtmtqKaXz7fV1JkagM7e7rlECni5xxk4FU5JyzsM=;
	h=To:Subject:From:Message-Id:Date; b=ty+BYM/ai5Veo3J9s9yCnlXd1WR+95slIlo9HYz91ecAcRqH3ra3Eldvy6dWsqfYfvPkGHy+Xlma3dK7XEJOxCuBDw60H7pAix20X6pfWfW6N4xhEc/qdxfnWa26UVvdARuLpPsd9RPFAljVMSQn6l1IvCwMP3jX5Xg39pe3RDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rv6Klt9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rv6Klt9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AA8C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734593753;
	bh=zjlJtmtqKaXz7fV1JkagM7e7rlECni5xxk4FU5JyzsM=;
	h=To:Subject:From:Date:From;
	b=Rv6Klt9gStL7bm/XpHOLe9JDp6k6/LJmCsuozXQ0hjFxnxxvL8kFLpb4VHurWtMn3
	 5JKpPylJU1DP2+KecPHkito0jgCk04v3Pt9JLscDob3YZOgU1KDABfLQz1HhEq3gup
	 AghEK7UBiwYT2Q6nMF42O66iXlKauQMdUO2cY4xFebCXOXyyJ/4Mw/kXVrSGOod7b2
	 voGDltdteWIqgK+U4awtCNBMbyKe3NXDtcUTb6V+tsnW/xvCesCmPgMd3c8NH87j+I
	 5c+p24WXobumucPiSkVGXWLTxjN/dyL92a231kkne0o1gZDcvWINrz/FOU/H2Mv6ea
	 5SckUmFQykuDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14C5E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173459375365.10933.12156039040507500153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b011b9328a8def6cad38bfe7acb88595bc00621654415107ac435fd13cdcbaf4
Date: Thu, 19 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734593753
