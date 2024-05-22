Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC9CF4E7
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 20:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716408203; cv=none; b=B7ANk9TONYSUxXuuLMTYgRyIEgR13MhWDX4wVrqVjokz+YLWzwdTWPdydLM+Gb2GhcA/8ip57WqqbvxfEsUVI+d9Br4447JUQFz+qJdCEidWFkXQ83TLE6mGwzqUWTXgl/Up7nKYHIkRTxRC47tUnhWsdujMWI7wC+aGvLWS80M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716408203; c=relaxed/simple;
	bh=qwR3/4WHZVZVjYqV9Toh3XWeuqtY9a/T/ShgWeqvlnM=;
	h=To:Subject:From:Message-Id:Date; b=cnnx+EZz3oWSMn9q0u2meJGaUsUoEY8pU/SOVB6H9NyvMNACfpD2/pdLD5DKIs9zx6EImB8FJEpSgpSIIRyJbDAJvYwhZfpnm3qo7tEGBgwofaNgC8ao8gMlckyLrTKVkdbT+vLVXccyItToGe8HBqm/86MT55Zs6Mhu7+0bYsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAk7aOIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAk7aOIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBAB4C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 20:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716408203;
	bh=qwR3/4WHZVZVjYqV9Toh3XWeuqtY9a/T/ShgWeqvlnM=;
	h=To:Subject:From:Date:From;
	b=AAk7aOInkNcqY7m0b2K1MZu/fkt3Av6/SLSBO1CP1qW8DOUwZ/ds8CkIlNuFehIsN
	 yJSAvXU4/FE94kpHsmnbU7I63IeS4kj5VsQCbPuveBJDkK7zvHFgpXRh/4hbervyLy
	 rd0MobuBZ5Vuya2i/6vQ4e4uz4+64qyKZTzbFGqNh/va0HuJGALrxQVjY3qPYI3284
	 oNH55LuRu3gqjMZbFUwpgTsqbZ+CO9RmFOxXMQB9dEe3YyvplTIYLMHbLRij6uuLK0
	 /qtBZCiyU1UX7fD4xJhekH0p6knFOKveKjo+uJA7DSyx/5jp3iuKoCABNeW02L/ckp
	 ZdrGwmLKX5qXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5CE9C25B79
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 20:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171640820284.10280.6389577384642531165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0045410e5af5ac220aef7afad7e620036477e1cf7cc5f328a9482a547032f903
Date: Wed, 22 May 2024 20:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716408202
