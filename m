Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34228FC19
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721963754; cv=none; b=sdLHZO+w5HjRf0RtR8VuM6tKGghipJ3JS1dkYLnyqamnuJjlBqsu6YD6MN4dZEPE4dpKsVZYbtivdroVHd/y75WeiFwJWqPAUsPJ0draoSi1Q0YgHdFjxGDdcb0wXIsGBOG7AhMBorgBev4EBdfAWLxH3l7SVl0HXKiwLsz1kWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721963754; c=relaxed/simple;
	bh=/jpaEOTUgDuWqmBft4RXoPYN/CLTm6WL0Gtp8TmLuLM=;
	h=To:Subject:From:Message-Id:Date; b=DKxr6BqMcODEqLFiFrbfipJ1M9jgVtU5GEAEn/71lDDQG5TpVJuIFnu3EHZGjCfHsckpzJXEf3sd0+qlLwrDAuUwEYYeB188ygTfJm0VXIUB/2Q6tSRiX07ORohS2T0PGC6DijUjv/OxCpceIc1bQSX/dmJElXOerijJ1TKYTDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQ0ABIg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQ0ABIg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58D9C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721963753;
	bh=/jpaEOTUgDuWqmBft4RXoPYN/CLTm6WL0Gtp8TmLuLM=;
	h=To:Subject:From:Date:From;
	b=DQ0ABIg4RX4KJ1l68NamGvwODphcahDAec/cNmdHhYG5Wf4h0do2s3DlzzisV2SsI
	 6Xuv9hCGzendpovFODQTOOBXKM5tfPlFUN7qzwgl9o5ChkR4h2TcLSo+fXeMjRcTkn
	 N1M8Ll/Swp/kuA9ZaY4m845cxIdlOOgDcQidzFhYW74p1dGz8Ui6Iwl7lswmXP3TsT
	 c4F2J0bUzsJm7207QzkMROF+J3RFolAJqQMiRLMdk29b1dcV2nD/YeC9dRjMitMtQ/
	 bWY4OGhrQguIQZzpryoKUOHv+nCcx+vYS6+fD2ABeJXT7QsXzcho3pFBNnk/kTTQsS
	 nA6aZXQy2WNIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADA0C3DA64
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172196375360.10184.15829021677450374872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf68604dd9de1a685c3a69cccb1ffade3ab9791f652d5f738ef434fd23162b79
Date: Fri, 26 Jul 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721963753
