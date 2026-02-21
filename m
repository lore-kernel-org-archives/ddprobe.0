Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1203E32ED42
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771695894; cv=none; b=P/u/HyqKhnJ0KhSEikhKPlpKn0HhrTkZWEOXhNC9HqbjdhYyXkDPfyVQhCM0pF0ZV8O3NLE30k9ZYCT9BXi/5m0d/NLxiEwUjVkkmTRfR8MpBUf1IvPixXeZK8YUDT1bs+TIbl5v7AM37joB0oYZ5Jkv+FrXkEzqowdCFe76NAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771695894; c=relaxed/simple;
	bh=8U8/LlAMaBpGRPvfiZpKkMzq3A/oLnou4QmcOLM9b+k=;
	h=To:Subject:From:Message-Id:Date; b=sPUhUFIpQblgC6HGeRak2Z2AZhtUfIX6E4pRGgOvIefPlvyS54v9MbCv135+l+9jOCtZKic82VsRTjvYffItSgL0yWsSOE8yT27pHtL3Zq30FxG2VlJDDAZYrMwNFVH5QjiLc2Je2RPA0R7lpd3awYHNpEIlUfHHiZp1yfsl1AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkCpGMEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkCpGMEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6397C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771695893;
	bh=8U8/LlAMaBpGRPvfiZpKkMzq3A/oLnou4QmcOLM9b+k=;
	h=To:Subject:From:Date:From;
	b=FkCpGMEWfFlgSjHmxkYhWx/qXUrH3BVEcRbHZnf+t0MRpEWvbsxo7UefluFfOcEPB
	 XtoheSooRa5UQh6Qk30KuhtuvJsSKj6vSld/k/vsUGrH9u9z9QCzt4sUmoLQLlhwDO
	 FA8UooxGEFHVegrCYm6pNKjkPeX8i+c9eq6p9mxfU48+i+0JX+H6VR1naXupRmq+vB
	 4Z7QoOOl91bXSK3KQ9PGwmGWwJ2HOZ+vJovnEuJlyi6m15DDxHBfaGkSIyb/EW6BuQ
	 Eyh96UM/I7HTQVG7jtC6Qj6FCPFy4MST/N/pLB7O0sv2Al47wrRb4MpDMMyGGpbKVO
	 vm+9IN35ARbYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DF7C61DE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169589359.23609.13703505597611298289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff734fc4da6136116f8b10f9711d070035fd4e712b5489c2de26a3d09639807
Date: Sat, 21 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771695893
