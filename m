Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173D41EE7B9
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753556394; cv=none; b=HDP/q0ylRNxiQ9hasvlU5NQgeM7CffC0p2mMd6Re7L22xSIbRZPOtfvfav0xFdhdZz/k2Xsn8unEr5CkixLaCBV9IwN/WR4d5XlQRa9Dz3Kouf7lFQ6/fRW47tXLO0x/VPmTeXSOeUPG/3fP6wuBKqPjBjBNWqJXjxed0I302Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753556394; c=relaxed/simple;
	bh=ehhYp2iWvADpYPxah5gZOZ7IeZDVrg456TkT0xPljGg=;
	h=To:Subject:From:Message-Id:Date; b=ucRvJbVAExBZwFixO7Rg4Fk5gLXyHy7Iry/w1RLL6InJKX4KOH04HXagTzha9XdkdL5H+JvGBOyIjZTokd7cKtFgyx2fYN5U71OwgFJulbx+L7YJK4JOjoaW3Q6QIf7tVYCvOH6cGCfGgJUK8AqKvKIWVhd6+Ku/AoP84/O4sko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlAmgVmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlAmgVmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C33C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753556393;
	bh=ehhYp2iWvADpYPxah5gZOZ7IeZDVrg456TkT0xPljGg=;
	h=To:Subject:From:Date:From;
	b=qlAmgVmHElcD3YCzv3AfGFAby7HQ0uX7AZaKyFn1t36qND7Q9oJIWwJO2p2rnQAAi
	 DJQVRIjtDPMl9DvhUxPi9UJZde9L7T7c0Topu5GOpo0j/0jw5c92KnasA6muokQ39z
	 eAmQlaIXU3geaI0jAPGBU8U28n4SA+oc/0b4rbvL0XBTqc8j98B+e617xLPTyvVS7x
	 EUBX7tHm8pxbSP25q+0CeWr54yfSTdx4qPyPe1XKz9slGKN/nIjcBsOYh5zeDU7hOx
	 zCKL2Sm5B4HvTACTl751AR6cVliDuHdEmi9TWuaELKjQvomw8nMYCstMhLCXW2LMbu
	 Tk5liU78gzvEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95517C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355639357.27561.1803002153024073198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232d64620c59911b0bf8223845341e5558a1616d755175d3c5a1011432350759
Date: Sat, 26 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753556393
