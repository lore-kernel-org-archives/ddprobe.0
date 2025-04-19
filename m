Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDB2149C53
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745102394; cv=none; b=UHSksBKkj0RemEPZtG4c59+x+9eg3/vIdI8/0IAf14j/Eqy9ZYetQVYj4Hu39h5PZM+USI4i+6n15qC5Sw8wNbDoqxmfeqku4gxlHlIROuMGxHlkpcd3/OG+YpHIoEB3C7Ldr8F/Qt8M8NtYxxps13HCsPZ7lgPdB3hwOk3ydig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745102394; c=relaxed/simple;
	bh=BrW/LmWM704jR5/63xiBRs9Eth/ujF3o5To2oG4ytZM=;
	h=To:Subject:From:Message-Id:Date; b=KOWthnEXP1hkMESkJAcfA8nGLDQHw3JbLtqmwX7jV69KUeSbZkJqmbXdDd4yQCiVGch+JlxdMbkKBD9ydT9zMDfDiHSDzwHvlYCFRsXOjKRV77RkXbaGAsj3JSNa+md4x52v+UL8nttEzWFv/90TrtestWyd/UG7cPZUGpq3VO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMfZlrP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMfZlrP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F6BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745102393;
	bh=BrW/LmWM704jR5/63xiBRs9Eth/ujF3o5To2oG4ytZM=;
	h=To:Subject:From:Date:From;
	b=OMfZlrP9+TMQdtiwg+0hRNy9yO0bSp0heHfermbdKwpsRBspjAZ3dmrBluehduiXx
	 PQ3VYUKYUOe8WFXZVkKgi/JdGw818mPcHfhPjrAemZl58jdPFWK9gZfCfCIdKkJXxd
	 HRpgEyLpZLqKiHMkf1SRHxOJA37R6GbNnRjDOpAtxXsrC+a8zaQ2w96IgIdwTmCITl
	 3vB+CTyaFZgOQ3FIG/IwM89S7LyEa4nSCnNuZ+krHW+gEq0UOBs5A4h4+FOLHVes3f
	 jxIAjkFp5O2T7dMmc6eJCqcs6sBym7KFsMxtZrtXX9Y7HTb3LopQUNE8Qnb7t1CxsF
	 TMGkIJRzoEbfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E5C369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510239360.15016.14655435308719785973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1862aef188f917a6fe973de37f98d779ecece998761669af7dd373d41e8f61b0
Date: Sat, 19 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745102393
