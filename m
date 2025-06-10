Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293B528B7EC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749547196; cv=none; b=hTaRBhts7pEc8rpKMU573CMX1u0JB1sDHSFdo6VmYOdSkvXQk/qqfbPLcBUhMg0/cU7+/6RL6I/MUB1LaUQ/h/w7YE66ZB6VWJGh6RDWRWjX0nltunDARwPMF3yv9tofRK3t8G8hcXvQmeWFa7kiNhw/DOe9NJ1vJqsWYrqkXYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749547196; c=relaxed/simple;
	bh=HMf2klU8h3VgS4kQFQeOmzoBbljhRrUUv9NDEaG/7x4=;
	h=To:Subject:From:Message-Id:Date; b=ZkNP3zT4XSZVo5TWVCoyekWUyf8Seaqb3EZZV4UucOWRATiE4WaQgPbVznGltfg+ivmyKcRRrTYo3iGw25TqFilUMZfefRMiGRq4543i0WPz3x8I4tA5xQWDblHc92LhK37dZ59vcE/8ToO6wUmI96xUBRkciimXcOZnVVxAQ94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdIFsyW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdIFsyW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F333C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749547193;
	bh=HMf2klU8h3VgS4kQFQeOmzoBbljhRrUUv9NDEaG/7x4=;
	h=To:Subject:From:Date:From;
	b=LdIFsyW3jio+xgj708lBjN5Rph4v96YkU1Snu+LW9UEmOShVVCK6H1kwB6aC8aaYe
	 oIGl5Bg5vFcoOqxM5GRNySFVi9ikwOOMdTGUXJ0EkJ/M+eY7SL3my8BBi9CZWBYIHf
	 9/tzLraeOsRSykFv8JG0LcbUK3ClrPyY/qh3Vuh0S/rPUy3jy4CvZXi+BvEFDrJwPV
	 JjFBer1AH29To5vCjeu1c43CimkOZ91lStjutf8Mpd5xohVi1nGbFQr1q9lzPU8knU
	 m0KBCl+hY5PqcGhWOcYJuBDhSD3Sby4OQusfEMNK2WwFjshzcHT2Q0mJvdbnCarhMy
	 R+WrICx52uuzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E911C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954719357.2330.7872964142073965913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d879dbffc72aa60e8e87b28662c74f937d7ea59b708fe4e46ce37668fe42c60
Date: Tue, 10 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749547193
