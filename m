Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5BD481CD
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749515394; cv=none; b=C29F15o/TWudFq6p3gfO/AugCK6x5zl32eGIy95pac1lsR+zDhb+l9uU4Eo8yO85srRhyMSUX1Hn4oKU03+pspajb6L0De2z8h/DmZqlwih0Aw3//eM9VYVPnWdzP0Vh2j3MhShDd4Aa8OZYUIxX0R5kE7m05+epQOlbadWC2YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749515394; c=relaxed/simple;
	bh=b22m7pHiyUUy+xFIKW/ZQEWmeTGATps50Mqeg+TdPCc=;
	h=To:Subject:From:Message-Id:Date; b=daYrbt+Y5RCelTAcD/PRBjFmgGSD8CYJaici1uFNfJ8XhfQZTs4iUaaJMSaq7lKj9m8qFXVW9lHAS3D8F+JfhGfsbPjHejNZAfQUe8KZz+jJCSyiwfKgexMIIYljaOEvkwYvDqGPsA9tWdk0sM1VvSwcYnG5M0UZfP/1HUu61MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f48yBQ1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f48yBQ1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB96C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749515393;
	bh=b22m7pHiyUUy+xFIKW/ZQEWmeTGATps50Mqeg+TdPCc=;
	h=To:Subject:From:Date:From;
	b=f48yBQ1nfffYwQE44DoMTDjvk5ZZFZ6Rnj3MxM8TjQnJPPrrIUIUYvYs4a7MNA0e6
	 Twz6nyAG7VvIS0aEqeqohZOzZgwTkzfxKoT7x2NXtTL3O0h8L5/8yIhOUl1/XnUaOW
	 xGTD8Cryn5Gi6OKHTpwUw/wI4BOaLTUa1Q0wG/om7kE/HSNwdFC0zUxzUP1VOb5XMX
	 m8r8ugO5X+yS40MvAqwjjX93tKTbtclnfNXpDkY7QAdwoYlSVZT4JWB0O69meqJmFP
	 jIXZQP85VttjthBcDAmmu9M6Ddn+kwHrk3Rx+ESmbHOGYo7spXDBaHLcJkt7XKTSBR
	 fgbcRQ0RzMuhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7AC61CE8
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951539357.4204.4128871570355076695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b3d8b9c1c093836cb98e84bb70861f384cd0c2de80377d80c49bb5074570b7
Date: Tue, 10 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749515393
