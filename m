Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BF62F12A4
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762858794; cv=none; b=bOoNml89HtlH+nb1nc/Yr4rzYFngnsNpOcA/5KDNEKKhTst9daBNqbn473SVITsQuhjJqmBc2RImRguPRG1VyESKjAU1PaI1Gw8eDc5quHuc1mS0faapPbJ6Ge+7BM/tqV3mso2JHkt0bMBAtJ7pV87kJ4r8k19exTkHKHuOcq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762858794; c=relaxed/simple;
	bh=KccNUXOvvMB3FdjITWreEsycxlIQ7qh7g8wzKHoxA+o=;
	h=To:Subject:From:Message-Id:Date; b=Xa+qtmmo0aXL9oP3KEMToT1XdZJvTzwO4P3w1sORZrf7MpErkFYqmF3jfFVazxJ28BYfDvevWs6DWsYbTtAMLd3srvAUwoIKNZncpczEHmVhtefk8evr0BiMsLGOcNs5xEVWLLjspohcQgZPBszKSTUViD7rSoHq+ScjKQfGwIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Av7QI3P1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Av7QI3P1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98C4EC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762858793;
	bh=KccNUXOvvMB3FdjITWreEsycxlIQ7qh7g8wzKHoxA+o=;
	h=To:Subject:From:Date:From;
	b=Av7QI3P1+eCW/NU2pCR2wcQys3tKmBATL95P5lUOt5QvhtubcHysllROpAsk7xTDx
	 QVKriNcjXZ0ztpbixRDqDUlNqzBlUuPrUdZJ19KN/AfbHnGFBZa/ahhIl/6f3XrtfG
	 ZmImhOM28aiiX3w6Q9ukJ77QA4jqHOmA9hHfx9rOJwwVAk9MdFVNs26SDiA5oBQSNL
	 VKz6j9D+YWLVV4oHGBzDGzYpjnwi79zXU2WEPn8Urky4eCMmOMq6lg98+vavXBtGfZ
	 Lv+pIy9NOzIPSE7vPOioZEmyQO8vF5VNpAPR9e7vos3HaWlc2ffTVp+y/eCSJLKutA
	 F0rirnunPYqOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEE0CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285879357.1263.15238946395199139202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac8fd10a802b932d032cafe11e97ad7bd93d321795552fc81b9a03ed95862de
Date: Tue, 11 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762858793
