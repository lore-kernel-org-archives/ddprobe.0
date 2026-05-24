Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5079F38D3FD
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779604954; cv=none; b=iihoTVueT1xE2k6bZBGFjuOvKZKHG0SoViLjM3tZm6C0nJB/ZqQ8/WLjy2JCE52frCttLnr6MO1KU3PgFdPSExMULFAlCUusnbOEAXa4f6VxwJUjMqzlSyeOJT5w39DyklVP+svwY+SQoBscOzkaCnOuHfdppgkJbs7PtChm1Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779604954; c=relaxed/simple;
	bh=TklJT+0/saiX4IFhBxbX5BwlgKT3nw2E5/GeDgO7KXI=;
	h=To:Subject:From:Message-Id:Date; b=PzqU4RdU/ix/paw/VnpMcrQFK6TysKjLpwTkBBsBTrTKWcDzRRaZXGzSLD6nbGWAks5Z5lUQNhcmrttQ3bFQT0dNTzH3sqCGvHLAIy+BfF/J8/0Y/uQ/YOkjB8oj3F7pQ3tSCfKKvGuvob+HYAr0tNgCETHWm8ELG0qIofoNycs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDJzrZB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDJzrZB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E56C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779604953;
	bh=TklJT+0/saiX4IFhBxbX5BwlgKT3nw2E5/GeDgO7KXI=;
	h=To:Subject:From:Date:From;
	b=tDJzrZB1sYMY0ekaLD4ELUC1Vq0Qrnt8pbXTjBHt/OlO8AQuunX5N5MPOsL+X9HzS
	 XRbrmu6LoWg2U21jNtn2Re37lyTEZv2br6KxvAMhnvfjJX0KSijDJAZ/0nrrxuvRAS
	 fWoN9y4m168f9lGiDmY9HhI6otlYm6iCMZ0JOKtzSLYmG0jxx1uqD4qIr+QjEREM/u
	 dO0GR6Myi9WZjG4nfdbUTVIfnhmx7ZF8JLei6ATelC4IG1UTZMRDczNqGQ5+olTGA8
	 gJsPZJcT7/s7nDNL2lgjEwE+JXnccFDmHujxsvEgptxVNG5JPcMgnFPG0NRfnY7+EL
	 AkwuNENclahtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0637CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960495371.24610.5353768770490153478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc0ad75772383318512cdfb70389d406f624726327b90da8bc00fe51781ff01
Date: Sun, 24 May 2026 06:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779604953
