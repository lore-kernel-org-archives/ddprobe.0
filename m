Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E77A38B7B4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779436354; cv=none; b=j17Ub71V7cj+cG7x8G2AvQxsLZgr6hJFPXDYulPXaXgu2Ymae5QXWicgksitZQRst/t2lnK+O3zSCLenjiACgYbwmBUrOn8EYOl+ANFGS/nynGo1Vwb3hTjZxp+A3md++C4gN45UWbX/dBWDtJGNP2l/kQBBxFJTMIXtFAT0n30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779436354; c=relaxed/simple;
	bh=GUoyChh6gQQbn6PKcNI9U0L/I+uvEmXSjFofuieOHeo=;
	h=To:Subject:From:Message-Id:Date; b=iw9oSURRbkQMx9XjRJlMt0F+/o6ufcHDTYYqGgXJk7TWkE9MFwnoUgXHoaHsMki80MHI02Rv9Mp3OvJ48/7sPj8CDsVqKLS14s4lh+Osw3/RzFdz4uf7Zs/25wriXWLj1FafKJ3w+AEhFUrryct+vJFVfcrZW5uytkC71Dy6bl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bzakf2Sk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bzakf2Sk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2793C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779436353;
	bh=GUoyChh6gQQbn6PKcNI9U0L/I+uvEmXSjFofuieOHeo=;
	h=To:Subject:From:Date:From;
	b=Bzakf2SkRuxpO6t6DqMDYmEvM5FzbVOje0Z7fJvnKTqZU2TBDnI3vEAlig5kyUvD3
	 bsnNXzOOkil8YbA9Uq2WxgxuybyQF/5APpnqxp3WUJJvrqw+8/LFjht6UZPjU8mboe
	 6wntkrxJxZYuB3jCyAux5ww1SyGguqVA1vgxWQSozN5LfEjgh2Ptxf9E/p2YmLQJqo
	 8YSjwfJCxD8PBiZC6uOCQl3LFkKTwvJc6FEeaXAIZFrFG3TyHOLNcb2oASz+pO3ovd
	 U1HP28dpzjeF50oQW3xhJ9wuwqNuNPR6PWx/FQzi/Ou3TsPO9yEguQUp2zDLAoC4dp
	 euOoE/9P/efoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BA6CD4F3D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943635368.4673.10128334239602799662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376b0576ad57e1dc5ce168cc9ce1833993440817805e40c206fecc42f200a01b
Date: Fri, 22 May 2026 07:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779436353
