Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8BA45BE3
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765092774; cv=none; b=ALhCjV4ba4W/OfYzwWaaLKlBwGQGl9bUSEEJGuALCdWiGemUwLdRCACwaa1AgVe2t9xykcBIVhPJaPvTZU7veDTCffNXrx2MflkYNR3ZCPJgW6RAQk/Bp/xzK4sD9ieYwljmbjOzChnqWWu6AfeUXKDtmNQPdWzX5Y6/srLxspU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765092774; c=relaxed/simple;
	bh=YFBtfQf4YHAJH5QyC+mSxh+aHvvT7OyLOe3QWeslUss=;
	h=To:Subject:From:Message-Id:Date; b=e+GAe7nEkS+mnbhi25uSen6Uci42QQtwKhxnEd+vWQpE9xYvuLQE3KFxJPUIsd8WyF87JrJAP/LfDIGjbhMSFBP2LsoYVcyzjLVgThAE1lsmCev9lGaYlYG8pWr+VmC+H8gn7IsXF20cFQOojEBQnaWqh5Jal40TVQy+bK6uzJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMI0rRwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMI0rRwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC06BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765092773;
	bh=YFBtfQf4YHAJH5QyC+mSxh+aHvvT7OyLOe3QWeslUss=;
	h=To:Subject:From:Date:From;
	b=fMI0rRwm/qrwOYbUZn6aZLQGMqsGPtt3GgmsR61IP+RPKLhhvJ0/7YQP6ZHs9J90/
	 dKiJSAPKU0bE4LGI3A8KSX7dX9K/0JD6Nl00ddS/Ohiz8l9yfLbwwydFh+W3Qo7DYP
	 1CAywowGUWmLfRrtHLGkPTlL+ZcnTubm0A5r9AP9F9uhR2nuZGAvsTKxyGkVJ6jJJS
	 CxoxHfg/o4vT0KkscTDBEcIKEtHU/TgI4xlHilvokNRQwtrXC3aaghdMQuAGSliTVr
	 dO5OPZUkuU1h9WFlxKT2m7rMk6kPQvLZ6Op3s2iKoHbLmaGKDcEgd/IfyPznpQp5Fr
	 mjYqiiSlTCw7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97940D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509277361.11376.600664151491530983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cbbb1e024870f0eea868da0d08b07ca243f42e022813ec9c246c958a9e4286
Date: Sun, 07 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765092773
