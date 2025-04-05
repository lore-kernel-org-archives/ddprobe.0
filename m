Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AD0634
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743817794; cv=none; b=aRejnWWpTpJbkoTg9AfSNSYlYCK9rxw0pIPe252HPk8Wm+/jtTo4BxCuJDvHEnwNaFl2x/dHig2wh9ululGy5M3bh6eV3QIuJ8tJfyGLtQRQVncOl8E6gDUclUHrtBc1VsPKhUuMQzWbKksYlgTa+2R6b55n1/tEQzZWuiXk314=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743817794; c=relaxed/simple;
	bh=hdq/hasUaaWB3lZ4MiUz9K7HX8XMIwQ0QX8Kxrldr9I=;
	h=To:Subject:From:Message-Id:Date; b=GalRKfooodH7VZ+5IvF3QxY4n5/lhDMcVZH3myzaEnXE5CT18UKwh21+G2fNa7Vkw5bv7YBDO3xkwOVk2CMEscpKZG9TG3GI2WKZq+aEB/UoHREVlG+bDVucB/LCiHGwW1Kbltg0lOwnZ9TYgRXfy23k11e07Vg29sWQG6sinL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrAj3vdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrAj3vdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90ECC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743817793;
	bh=hdq/hasUaaWB3lZ4MiUz9K7HX8XMIwQ0QX8Kxrldr9I=;
	h=To:Subject:From:Date:From;
	b=QrAj3vdDfgCCOZnfhcUaj1u8nb7X1S5i8pY+xcFKaBguM0D9SQ08QJN8Cjw5+hA96
	 Cv+Js5rDQgNmlQeXykRAF5l/cd1/lg+h4UUQ5NgPmVGynB8YpaQgngMSPYy4AU7CsH
	 2wjLX4nb5LVvXmRg9blfCBQwtVA4Ir+HhxEU2TTTQwbHb37fPQK9Y3qnyky726Nd4G
	 2ow5xZUvFVVxiPBP3ARjJ7Wpxveae8GfS7VILlGD5s+9HboIgO1agylTsbHrFK170Q
	 DdQU6wQm1uL6/OQqgV1e0q0bv0duBdIatweL9jgzlILhbUfjO2S5WNyGB9jqZwwa/8
	 BN0mMnMLswTSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A535AC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174381779364.475.6069491690170725263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477645a8805515cea3c67163e49e6d762d516041ca9857c1f22d7b268ab0be01
Date: Sat, 05 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743817793
