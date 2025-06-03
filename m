Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEDB23957D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748960994; cv=none; b=GN80MHSGhiamPg1UrbRSwA+y/cHNA87ZXVtRScZqNYDT/Chp0OYNL74Y3sXO2Mwp1DnSuqMrKzi/k5YfE+V5vDbJF2jxRY8r3g1+3FK3i43mAy7pYh1l3bq5Iy36nDgoQuj4q4uU1G4iyaSA9sd7jlWNM4f/C+YfN6OhDHpIgjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748960994; c=relaxed/simple;
	bh=RbcrbQXRjLW8Gm/odUmdDvAhwnGU/0a8WrziqC9mJc0=;
	h=To:Subject:From:Message-Id:Date; b=BGDmQT8jUVrq4mJS0aD2/Pq+wu820p4QJU1k4lxiHYcuHOcgdwvhQzwvKVVxNM85eK+hjtUcqn06fZurN7SYt+nijApnE98gY33lNOZrAQ5ikCxUNhALb4YsAs4wHry74YmpOon3DS8r5aVS0kAPZJrE7B+nPuBv+cZNLH2899o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJwA1nmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJwA1nmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A237EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748960993;
	bh=RbcrbQXRjLW8Gm/odUmdDvAhwnGU/0a8WrziqC9mJc0=;
	h=To:Subject:From:Date:From;
	b=gJwA1nmcFO2RSlNE+PLReEOV7+3WeN9D6V0yy467DELdsKTg2PzGhyxh2iJiMQ0CA
	 TzvF9+cwsC/ZsJOSkk/rHsmCTteuWASfqBQBQ85xpjSeNbVKwAzQX05odXLCDZrgHy
	 EsvC9tnzZjjKdG2e6JsCHiqbtS6PTJEzSI2/ad4rKUy7iwVNhmmJziE4ahKO/luAve
	 Rhd0RcDDKwVhjLexlkr3fnC3hKU+3dOMMHNjoIW+EB+HsJkuCUPqWxj2eHuunRIItK
	 kSksNw3N9WzakVOk2Pouq3iXTZ+y9jqcePjv6ym7PfdxSjyJB0FgG7Mb7yrMGKoKRz
	 bjoFF2/yDm6/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75BC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896099357.20419.16838481116416519240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a482edac6028deb333e47c2a9cad7116816e9be6108b1056423bfa3635258f71
Date: Tue, 03 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748960993
