Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C261025C802
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768569833; cv=none; b=uexbFPaOxUNVxgvNDv4a4n3bdV4QpLjnKmpl0XfaSoBnt32dGcpRWk4i9x0l6wwfgUNOGyt3Q+NDwf3mpgOgJHpSBHD9uqVuyFQ0sF16DgxAqpJm/GmwE/ehxETrWLPTj95OezmN06gWO5nAVEqYNR3AzDmSrrhtJ/8mWyNn7bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768569833; c=relaxed/simple;
	bh=4Ij362as9OutFYGFlfYNmsDn3jTYE6PS8ibO91OhGAg=;
	h=To:Subject:From:Message-Id:Date; b=GG7fNQqn/SvBunm8qC2K5DIbZYzgZ4DhXp/6VRd1AiMBEqeDxbSSwzU31hfyxmYm8NplvEDwdkRc1t6IMeMGWNjR6zPrhZo3yxO+gij3tYR3xMSSMiiK1tGJWsCE2mPis6jByIdMIyEDXN0RPwJIsye2nb9tp+p+59fHax1UtOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHX/OkCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHX/OkCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE6BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768569833;
	bh=4Ij362as9OutFYGFlfYNmsDn3jTYE6PS8ibO91OhGAg=;
	h=To:Subject:From:Date:From;
	b=KHX/OkCvCG7CJyQ44KNksX6Vq22wq44ORfwpaZNNcqhEikpEg/eLH5v+FqVdJLXHS
	 atZxa+42UAx/X67fcoVOH5aLbH6exyRge14Syf9IecQP0Xaft9FhRl+mcIyXpgnnd5
	 rq/SRQ5QLX7jKp743qZsMcdtUTTbZV5a/LgnfKlVMCPCGBcEa88++qRJXjPBQwKl71
	 RIwf6+ufrnYZdFNn32jCMzE61h2KFuotXtawGYKYkq+kVjbb5pMDlXijL8TmaOB9Dk
	 K6DAXjMSU5Hht0BHOhcD7QAM/j36W9pICWsr3n2vxIh2Yp2PhmnP0qk2C23pbFb4O/
	 In7QJDqlhb9qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91545D4899D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856983358.31435.3368696282028666534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 171e81a1c476f0dcaad7b01b9270c931a00d6a2abc29cbee9c2bc9885adf239f
Date: Fri, 16 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768569833
