Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750ED3BD63B
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781885794; cv=none; b=PhKciQEKuUNdzFb4f5vfYQns82cnTKzeKHANxHJXCRGthU1rV8rJEia2dvCal50LtwSPffl/LdAZdqzfO6RHz6NLGeI9wqHJDBjVzg8r7/HtbDxj+nUoigxxmJk+HnRwpXikGjuxxUjszJWZoPSmjRSF0Hmg9+Avv25P0eLyixo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781885794; c=relaxed/simple;
	bh=F1qetyqtY2vvUy+SbKdwcArXfR/AcnTsskz56D/ddtA=;
	h=To:Subject:From:Message-Id:Date; b=QfluUp/Pbqc704o7SeKZO9f33UCG6fj3QUV9bT5JJptS5bm+2VbXmHw3+wQnZWUbXrD/cwWmFkjf6dy90U1LSyU+Ws5pmHGs/otEOd4B4Qwq9LbF9zjE2s7UcL0Q1fLTZM2WTpP6LnC08aciCCg3vQNhMjHuuNNvyuSyKfb2x0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saVennV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saVennV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFB2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781885793;
	bh=F1qetyqtY2vvUy+SbKdwcArXfR/AcnTsskz56D/ddtA=;
	h=To:Subject:From:Date:From;
	b=saVennV/b0iDKGX0fa7CxneG/l4JWN6lFPyDQt455c1PcH4TmYqkWRD0idNRhpd7E
	 ytOoPpj1g2GQxx5Zziwkt4bRmHmrRQz95fEQTQZg+13d0Wg5kd8hDGxevGmsD3X8d/
	 OkgRdKORlyG0hnbi6DWo/m+9GCfRk9WBTW8L7HIBjccegt14TkIQUUZGNUQ9P9wNBy
	 tU22alIZax7ntkSA/Rqo0ParHlLQcwHs90Q1DLkgukdXiP4n6ooGuq4Xk0i2lkARFc
	 I4TzYJXORKW7WNOF/jV2/r1neqn3s+tgZFjaeJAi0YzyYfDLjIeP/11+3i8JTOO8xE
	 kWKo3TAnNYv1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB93CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188579368.4013.245953375717761785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35cb025cfcfa543f3fe42e3068d6a97d803b490347fc6db2de3ced0525c5b0c9
Date: Fri, 19 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781885793
