Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298DE1D9A48
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736156754; cv=none; b=UjxEm6qSHArcBQSQ56wZgmUrRZg+EBzh8kTcrjKLFXa4X+40AsmN8oi3xn4a/5zWvA9JSzJplVLeRSfbA/wdokMnKXh9ETew6xbh49QzryRa5mQDrUtSlSQz2XLAtNphtl4oZq5nXqU127RG7vOdjpk4fdmLZvPHYO/Lw1/+Od4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736156754; c=relaxed/simple;
	bh=6xXnZcwco8rIDxmSzZ3EN78Nx1jjPPdPEvM+BwrxbEE=;
	h=To:Subject:From:Message-Id:Date; b=CNwooSTVeZgrKEkIhwbPMwQoCp6CT889WFAWNkr5pA9zTfk4wgQfcffitKpT47n36w5ffV9r3SXg0Jrz0EwGiBW7DZlqk7rRguYY6cZHhjJKWkIlLNQcSq0MVy5oVPwav2pfQBx4lfepFz13+xVeRXlhfTd6sTMYOB7Q3FGapmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JN/FpnN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JN/FpnN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41B9C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736156753;
	bh=6xXnZcwco8rIDxmSzZ3EN78Nx1jjPPdPEvM+BwrxbEE=;
	h=To:Subject:From:Date:From;
	b=JN/FpnN+LeAyUyzQYAoy3LJi15MJqVfrdTq546MwoqQGUE9EvmCCCCBdkL5jI+aux
	 Tk6fyQQJJRfKPtDOt+NK/KhGxEDH3Cw54cXb8XpzdyEJJGD8mmmO+i5X52HXNpKPSc
	 DjJ7NHL9+4nCgIh83WDRIJ5yi1JcLUNAPFf/7awsIpkxw/d2ggXuYEGvbMvcGJ120V
	 og1lfsKyrgSTgLrQ7pS1l5phgmYTZepqhivBFreSrUAkrTlp2l7xy3rWefIyrzPiMv
	 AjFdD/SYFgUWbAmZ+jfiW3ZzNOM6oIXlXL5bkKIDGfz7pYnDINexpp0iK7X0FknNqS
	 dp80zf7IxGG8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D3E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615675357.23100.553117607820035321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948c1b3db02a2343883151c27883253e09dd23d09030a581245266b68a6cdad9
Date: Mon, 06 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736156753
