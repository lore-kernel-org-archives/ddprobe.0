Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B842EBDD6
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765350774; cv=none; b=GWHi8dKtQ5+2qOF2+psAd+9Hm6wLT6Yi72pHowxBs1wIj32V0uuM72aJ4eQdc1VQ49+aedkHbn3FpRX1oeUokk/R6K6cl7ScgaVpOJ6X7uTUJiK5Wb9qjG/vEiEUwS5uhota7V9Wld2AEjiQun8OemOKgvJGVN88R2IGiuE9ZfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765350774; c=relaxed/simple;
	bh=vlxj5dYH9Y+MQsEysKDOOtLSzwJCuxzqtJr2u6ivIj0=;
	h=To:Subject:From:Message-Id:Date; b=EotKm8iuVv8Fg/gmTGRuWLvKKOtmE3vYGy+2qeLbIPudbfO/ISu6dUvSeLPmB0+11KY0lzQBw1j148UTwMJmEjcPH3nxarcpNrQ+IwU4pA6QHE2J+2SWkb85Hq0aDAvTo5OdJjS8ec9zbktMFn0BCKjEMmcqx01e+hAgpDSIdCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nx5TGp8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nx5TGp8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CCCC116B1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765350773;
	bh=vlxj5dYH9Y+MQsEysKDOOtLSzwJCuxzqtJr2u6ivIj0=;
	h=To:Subject:From:Date:From;
	b=nx5TGp8EGsh8dAV+xGM7OYESvPkzJmqeHzCO1JyKQmPyKY/2IFwl9Wx3HzAxqUpT4
	 DxwvNSL2StylEyT5dTc5ZuP8PixNzBpoL61Xouu9F3lIcQ706+Kaw+ZApOKjqDXoWu
	 gyd7J6TK5d8u6lYKj3ujMTpLjzdYoXvfkQ8SeSGRRi9gZfughcQRFu6KYFCj3xBYZ4
	 L7SVpaKOYzNAYirhPKufGc5Y+Ebc/ErSyRng/EAOWz3uTCwNlWjacHkdMg6mn9uFRe
	 LTlCEVy2c5BxmEEH9FIl8Ajr2D9FscIf29R5EO1Svf67A5dpInsA2RuvWNk1hYIa10
	 V0W3NHfBHOFjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91973D3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535077358.17700.5333302535180585553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 459d78600fd1e724a5acdba879b61058d63716f72963596fbd114aa2c73c927b
Date: Wed, 10 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765350773
