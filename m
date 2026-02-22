Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21560EADC
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771738494; cv=none; b=D0wxHo3x4wBQmoPd2PY9l4b+FZw1kPVnbLe0Mb2umBCzK8r1/OXhFugqUxIeBZ5CGpLBXKK8NxVG05kT3XNAwm6nEQ8755kuXTtUgYjpsOXbFCztruxYpPg0VCZFrlEAV652hcUwU4lw2mY94lQCevwkC5yx2rwmgf1laXWvjek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771738494; c=relaxed/simple;
	bh=w7l1uR32hiOPJYU9ngfwbkoIzMFo+/sCdvxBT4tKKg0=;
	h=To:Subject:From:Message-Id:Date; b=AGUaqpVEcx5lRMpbeNuLFQvaHZd0pGzuY/Ysck1OhF6fLGqHKFxCI3Pv3KyvPkxs8r5I6hc9xQEVbSf7R5qTGL5B9Kw2Mi491xK5MsJMv/EciD8upPfmedzhHgBMLdI1MMYdqFa7XMldRA6HKjgB0Vk9pxeqdNN86dkPs/9H8zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+mD/Kzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+mD/Kzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CA2C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771738493;
	bh=w7l1uR32hiOPJYU9ngfwbkoIzMFo+/sCdvxBT4tKKg0=;
	h=To:Subject:From:Date:From;
	b=o+mD/KzwSSYOpOY0SSoSC1F6xoZZdAIE/xJXvApt0QeDuObtlSI7hZdrnIXseMOpS
	 yiwS4iTnz1CyZzL2v37c3upMpwR+LuR5PbYix/41n/E4XSaVi8hJZOJZoXihHogrRn
	 DfjUwGgcW1a75MGUonBztA8C/gJMHXGTsGAo6aNjheCKfzSg/+a+yhdriB1PsYf/Qv
	 1mqqe2y4Xz5UCbUh4Maj7NPsxcHfcJ2RS6oOWj+hwnslIwKCVmhSq+lTRyHW2Plza0
	 ndXzL09S4zWsmtpcJziD/V47hVOgFwRVt55aDWYjvTNVSwD7/LZao/aXlZzaa7k34X
	 DpkNuxv2M39Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F6DC5DF75
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173849358.15597.4280838456361896052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed007d650243cc595b5713ac2d5f69d3ae3c5bdcae181f8bc1e373dec6942615
Date: Sun, 22 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771738493
