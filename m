Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB721F91D6
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777222653; cv=none; b=aFl0LDFoVPisnVbv/XA2WEd99xqGULLKVzjt9X22Nvjauli/pWtp5NZS+AH7+Czq7iRtdsFBUvhc1lB18mhSVZZ5d7gEhECEzVuMl3yD1T0CanbgALNRJB7avfJzO4K9v6OXohfgv7E9aPdf1wE9HyFmFINGdTYZw8HpbIGfnJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777222653; c=relaxed/simple;
	bh=8Ed/zg0YWe4uKcV/gqtGGxNq70yghtDezhUDcFhzF34=;
	h=To:Subject:From:Message-Id:Date; b=DXWIOXe+AqcQAr1TLRChMOWJ9D6OLRycu6L0NdaTc1bBZef5eMcfW2JoCzPB5d7j4sA/zZTbpf7tWHMQVgm62N/AbtrfP7cH0QYUEg2UJZG8whGUM+xcf6ZdKlSF6jHrlfnXs/1J+rNUPUvhaq199g5iwTelkTYlUUelaVv/Pg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZwZYo8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZwZYo8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE635C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777222653;
	bh=8Ed/zg0YWe4uKcV/gqtGGxNq70yghtDezhUDcFhzF34=;
	h=To:Subject:From:Date:From;
	b=HZwZYo8yKJrAQaEPhFU0PpYNG3EidmHq/RpQCZWw/4I8StFRQQ52gGnbwRITHQ+19
	 LFHHeiw8DS92PfUqIzzhute647tdesvFIY0vpGcqaEuUDZ6ZvL8KTvVhrOYwOn12/1
	 DKWvkBeTQXYH99wa72egl8+Caakz5nMfObUHfMA0Ye3bJPXnr/EM91zuGGfNNcnEvJ
	 +yE09gPCCBZ/yAMCLjmICOuR8qy06J13CFHz1ELpfZf4/jgUU50d+QaD93P9YJDzh0
	 2b4E9kRlD4i5VGjX6P9QLb3P3DurFm97K+xO1z59inv1lXcL4ofbnU1cEVf6tG2sAJ
	 MiT4U0K2ayOiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC704FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722265368.12940.13323858318704269736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be822cd4a3da5fab3625037235b20b4aceecf58aa0096fe82255df399bca6dd
Date: Sun, 26 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777222653
