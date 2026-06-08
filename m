Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCD138D401
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780903474; cv=none; b=aTALRdHEhuFn4AcMYYHwqUhH6F7rWAI/8x75tQxb9DguOXLobc1WKk51vtdJ+JWLVjrkBT6E8euEgVwp/gp+AC+IsnY2vdAoKK8RWmtcNNUFntCRdbGaYMhPcJfO8Q+O0rwE52OrAneZRrY72blrc73drGdZfu2jBN/xmmim580=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780903474; c=relaxed/simple;
	bh=0ywqUOJmhxnHl6iuvnmXeQVEQwjzAlr87BSQF3HGN/E=;
	h=To:Subject:From:Message-Id:Date; b=tGkdMqleB9bNZgqhRQdgtb0fmHHDQ5zXRsRGSPQwjDlGucSzLH+5EIGHTDxXMHBNZFjn51I5eE5CjE2nc1ETfTkC0Mavu+F0LtclaxItI/ksXQTbBUYQ4LKWvMEpBXGQq/t4hn8Fz+FoZZVtqJ+D/uMLUpYq9f6tNpTLdn4Zgxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKPUrwi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKPUrwi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08C9C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780903473;
	bh=0ywqUOJmhxnHl6iuvnmXeQVEQwjzAlr87BSQF3HGN/E=;
	h=To:Subject:From:Date:From;
	b=qKPUrwi76Xwe6+eiNPtD0bACotsa16GyU4iLL+n/PLCXCPFyCv6t5as1KyYWDnbiC
	 CtH2DwJOBiNwgB85RzBH6OeKNSkpgR8Cg+3pa9+y8JSnH4jnfCir6Fvoxvlpf62RXL
	 iSnTCOk5tafVbUjZ3nEAemVGt8XPRg1g3tp5U2InGCkqFY87H9pvQWeJ7uypCiTzrS
	 OhLZyL3lLOUWIQIVmfNiFcql8BEyNAu+dvnaiKkJsmAl1TCK17nhTZhpDjRQQUUTgD
	 V/Y4l6HUSKM4BP0KQFda1/xGGDm+EKYKVIOhtfXOiFrNFPsvhT+AtZGKWcn8z02J/4
	 YY5MaFk6bgs0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAEDCD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090347368.26260.193949570028935473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a283a1510c26509469e4d94acebf68d4a1800012634597fc9a3b1ea04d0eb9
Date: Mon, 08 Jun 2026 07:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780903473
