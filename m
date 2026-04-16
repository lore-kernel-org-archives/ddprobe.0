Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343E138A713
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776325654; cv=none; b=JQDLOHuKQNN5rMdQtL3+PIjEXz+l4bE5ym56F4gl5oL4N5SumHMB/Hxr7+MnozRj+Ohc7OKDM3FrujLsaeQHJmw6v6OrOwO6HUvBEEivjI2I3P72JaF5N0ipWblBZgcP61U10SKHTo4MgFQy26mJgLNJVb8TK0gpQ6yiSVE7CdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776325654; c=relaxed/simple;
	bh=Gdvatw8B9y8nGL3dT/F6bv0xFGL8XDoZ1QlFwgmsbVU=;
	h=To:Subject:From:Message-Id:Date; b=PI2WsxU+2MB18fdmNhO+S8YTEWIHSRy3TD2oY8ZJkWZ7BHR+5nwbhmHxxCyLbWeg40Ph/mwNcPEYa9vHCcQ+LE63+YkKkqAOXUIwVpls/8NngMG/QVxOn3/fe8NkvsZinQ1JDg4wJF2Ptx2JLJewSllO6D55C9Ak4PbcVlyTEKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHx8DyHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHx8DyHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB65FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776325653;
	bh=Gdvatw8B9y8nGL3dT/F6bv0xFGL8XDoZ1QlFwgmsbVU=;
	h=To:Subject:From:Date:From;
	b=MHx8DyHMV5bCuO4NRxyiaIaPyYCLjW1+xXZbtUNdxlxfIrnVk6R5EWqR4Bsht2GXr
	 yvHW486zNf11vkDc/2jrfnuN73J4XsCWdCPnqbKw4M08UUywkd2mKz2QGp4kvtUUVj
	 zKRDVOXraI62ohRRi6mk2/V65uqZ2LD1l2lENECpjZx9NR0BIR/1eGOw/oZFvFPXTc
	 i1SBenSGu0zvFI40TFBJ/ocfsdlP6U4qk0573FYi3PdJ+yb5E5UOIEZB6Y8z8cWO5l
	 7SXdwolvpNT9xe4Lu40WfqngrrpvWaA/DWQnzzFhePr87x+yPHFdUvQvpkFOPrVxHC
	 0+VW5TGuVd/qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA138F43841
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632565368.32284.3043801892770405906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ca7f864d137016f17f5c8a10fffabef9f1da6c1cb85dac3ee138d13f7f7650
Date: Thu, 16 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776325653
