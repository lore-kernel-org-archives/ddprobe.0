Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF1C272924
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 23:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739314854; cv=none; b=DrxWRfnq0x09HYYTZzuRuZBbWs3+2xmjQguDn4cCPLgfDOGNxPDifGRvYnbSprD9HGZd3PU+6W1DhBzFF2H6CBcEpJ30oBoVaHWKcCwvm7RybPQoD8XxhGXMrtS2WFJd1CSoxYqyfpzGD+HigTSRe2bJx/ZFD7c5dSyyvJmVTuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739314854; c=relaxed/simple;
	bh=wBdeBMx3H6q6N+pzn/0+wzuF+QSxq0kBFo/+Xz8Ag34=;
	h=To:Subject:From:Message-Id:Date; b=shnuwOCUPi4kmSUsjFFOhlvGoLuB3QnTpKnz16mKkikERO51R0ZUak5KsvVO8yuT7S3ObOYZdGdw7vprM4YA9oXj2zy68zhb8gfpo2ns35p8G1k/egbq5OvvMT1kc0xA00BuR8nLyaSHYzoBQcY0CuUrxvJbsT6OPrjEJ+fcJOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Etp1lutc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Etp1lutc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93F8C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739314853;
	bh=wBdeBMx3H6q6N+pzn/0+wzuF+QSxq0kBFo/+Xz8Ag34=;
	h=To:Subject:From:Date:From;
	b=Etp1lutcyVdGh3jCgIc6GSnth0vKTaGqpgd5QXOEFZ3PYRpH9JqOPbJDn6DChon0D
	 OlqNYcph0Dvlewi1y5WqZbVzp7omtU5vtS1R7jssC3BthHN/t0h/j6ZKZJWoLnNMgP
	 q55ltcDYx9PMQekpCgZmGvScjFfuLTiVpADriYyb2RGH3DeEeTAu+Fw3PUrHiiNpwa
	 BnG+2Tfr5DamFk+e/SqTdA2gBFcVr5a5hCeAaEqNPE4nLknvg+DVIrkMH1Eig25gHs
	 2FuVQsyr9hsRNpliOdi4WR/6aoAfX2fBtT93ESIlPvWYjBGosPKwghYHfRV22ZeVbI
	 wgDXRMmcu+vMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987C1C0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173931485361.15301.11073668811871052848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3b6acfd6e05c319c68453080c1c500ad8207f0c982c37fa90ad892b9128122c
Date: Tue, 11 Feb 2025 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739314853
