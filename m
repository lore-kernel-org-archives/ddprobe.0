Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A87423DE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746657594; cv=none; b=epq03RMwU4SM/df37Sho9GF5PN3szbpXW+skOXtbrfZTcsCvZQj5qR68qncRN65UECgQKj1/rMaIH6bZyY6b8kOwbOwLO0+54UaX4B2UqevfEWxhNpygzDUeH7ZvHNQn3e/0qRZqmNHVdbLgBGqp0OPG3+P0tiqrliPtsn/4gC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746657594; c=relaxed/simple;
	bh=A9USP19Lv2IT/7ALf+S3wTfZRGLZy2zN4IjfiV8XLvU=;
	h=To:Subject:From:Message-Id:Date; b=IA6sD44qG9PzLM3if+DoaUO/zobJHyGnVKPyDLidTnxQ0RASofqCaGHkHY9utLSJ7cUs3c6kstc9EsrsATwhgCTuLUbJukA9PeVb5tCaffljzEt6VZcjzW4aVyGIj5dXoUsyb/WukANR3QsjBlWUutxkt4rvbvuXh/6JZOq1Lb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htsUbdRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htsUbdRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F252C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746657593;
	bh=A9USP19Lv2IT/7ALf+S3wTfZRGLZy2zN4IjfiV8XLvU=;
	h=To:Subject:From:Date:From;
	b=htsUbdRj9QlfKdtc0tKbYbRvOjFkEB/jGpeI2+UNkYQ+jmiPXdjB1AHvWAi9vZMlJ
	 KisXgMwsXsZ7m1nhBgiaEvnYwZiKOk2SnOJk7Oh+1bt5iJBcGd1lbqwOLCGrRy4/zY
	 nx2VYeas2lyJz3uawTZBNWjLbP2EBT+3V43f9elOToArY86VvBrku9K9vQ8wyA6KhT
	 +0JF0UjvgRgZ5O2RDpOOfDHkhdrfT+9mgayRJYR6zSIW5QQhnGvbR5NOdexNlMa+jp
	 P2+A8UT3E2eGT4ejbcclN8G2kX+1xtuqwVF1jNynSTPqqhafyjRmdeRICKkIhjCJO4
	 tQOGGcvOu0K6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D920C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665759357.26009.11650719399188557306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6633cfb17fd8bdf8049e08acae01c0d2d181e106dfc040b81bad854ff3e220
Date: Wed, 07 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746657593
