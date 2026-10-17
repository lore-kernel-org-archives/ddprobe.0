Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424184CF49A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792267834; cv=none; b=Nst8sJYc+F7hTzatwKk/LXOSPPoGOeDq2HRzpNO9sgLB9hWB0D1uNezGP+zJXoBnmtDdJCJZRQQwKPmoTKxp6gKt8lQHEkSYQ382dS9pK8S+D7YJBb1jSjuNcgA5hjMqdk1mHQAYJuoRks0GuCGddlaB7f9hirbrtYL1YY3FZIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792267834; c=relaxed/simple;
	bh=nI0dNXh4bMYxLx4EWMRi9MTZCydm646Npjdjs6OedNA=;
	h=To:Subject:From:Message-Id:Date; b=jPBQPE+P4VOYMJUIG/RvG47WyqnxhRps8M35z2zSlEPZnpnVG+LGiTIFnN6wKbacqtkC9mEzRF+sFJz9yE3E6WQ9MG+TOgMm1TNIB0Y8XiKzsUjtQtVNs0TuLOHoklyiNmzHuETomh8QaZsXLVMloJWJyUBAh6woBW83bowLBKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Az89h+4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Az89h+4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA121C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792267833;
	bh=nI0dNXh4bMYxLx4EWMRi9MTZCydm646Npjdjs6OedNA=;
	h=To:Subject:From:Date:From;
	b=Az89h+4J6F7s6GY1A5W5HHoqKx2CO4vqLfZWed2ZSUkQyURhWRceL2qu/YSuoAKKB
	 naHxMF62+VYZqmaxd1E+8r3H4wQOai0WCZTWWcIUpERNX8JVuWevef7RL6qblqJUE2
	 E9xfm9Z2bI/+tXBDYyfGIg63rRxIykwvvzSLICkLhfbQy6BB3P2gSpW1BjfDQUicD3
	 eYyxOlL7bx1BU7JcneK8yVUrSXy0YT7WLIT5oSl7tR7c1E2tQg9IsvZkRppfxnef2D
	 p/WDx7V45mLBR6YP9EqxWHi5gHHyxFHNYoKrkwIV7PLynNpoPB3OUGHmZl8g5CT90e
	 1Dh39vgCINvqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E9ECCF2C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226783373.11178.3038453745294932150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaecc0ad6caeef34614c9fc4e1b895271092db27cbeb7e1f359315bee6c37367
Date: Sat, 17 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792267833
