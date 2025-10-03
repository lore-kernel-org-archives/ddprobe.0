Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8612E9ED7
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759490394; cv=none; b=CnCKqxA3JeoHQeZ0irEd3Kk3P20ck1wwqNhAmSBt+X4wxz+entwqLNQIkfVGwQ+ez+jMRfPGPwjOBT6PDRtoD8z/M7iqk4XWDDqNvdX7EpZ2aDDxXOlSUr7iE8A7ZSdHfpB9oOYZ1/TrgRHicezfC4/pEZwnZu6aR1yotZALFJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759490394; c=relaxed/simple;
	bh=EwPTL/+NyVQheWh6dNOFvW1QU5YNSu0K+BzduGKboA4=;
	h=To:Subject:From:Message-Id:Date; b=J96iF1AZGexRqDP8Rvru/YitKader09lsL+Uphuew9QUemcHX/sEbmHCivyaEFFLUrgcBdTgVxZj3hf5KxhmHCZRuEIgW18GGQP1QagOa/LZGLLr8Wksc0qLM62h7bs+O9Y16zrAGgCXEQ3KGty9XVsklTDImJ5shui7s6ezNcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIxG50qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIxG50qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A035DC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759490393;
	bh=EwPTL/+NyVQheWh6dNOFvW1QU5YNSu0K+BzduGKboA4=;
	h=To:Subject:From:Date:From;
	b=cIxG50qopWHiFVchw7SJVQ19E2kiMylt5BRnC011c9tm6LwnkfAbZs929t+lmXYSC
	 pbW8tHIGRPBidVJF5Kyfd67ABgM/Sd6sjt6j1n7kXY7b+ZsIrQ8cyOhFtbmQ9d6SXZ
	 PMudrspv5EWjK/7VmYTPwlB+JS7x4RXxdOOj2cunzr/3WXzNCzZYIts6IHFq8cNjxc
	 ZqYYZEvjdESXQz2NsDfK/c8aOwv8Ltz303FDCnbu/KvWQ+Vw8rSuIWEL2L46tURNRf
	 DgE16ZqmDmdhrSM8vjKlIJThekdExHILo5lydkFXBwzyPPMRLIE2IhGubz376wMYeU
	 7QQJVXRwgy7xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA1CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949039358.30492.6262697809744862241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8bea490505f00004f6859212ff9fddb9926be52d04178cc29c4078548b8241
Date: Fri, 03 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759490393
