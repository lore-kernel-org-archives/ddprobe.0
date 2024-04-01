Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FA315A4
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711957697; cv=none; b=eaOX03PnejKf8eZevPIWWdx1A2Q/GrvYIFR6Vs1uRsCD1z1Zv2+CiROmtHv5hDuFXSzw8S/Iq5VWysoMYxmiIwUNJq1sHPKzylFK1CHkMYv9V6IU/cAfPrUmOv5NdyJ3XtQmdMXD8Mp/7SF00+qH71L7hUjrvvMpvEv+MiUj9Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711957697; c=relaxed/simple;
	bh=RBvHycDl0ey6FOB/nN8YROkJOH0/oYGaGNaHREYrTbo=;
	h=To:Subject:From:Message-Id:Date; b=QNSAdpPLehQASw5HyjtfTcFfkCCqw5ZAFpLCj7018CGyNGpeAaBXojIt4aVuz7p31n52QITcep0c9SbOjiGo+6Tmeju7Yu/Y0MW9ejp/HGCL9Qk8PjhK3dyq5VuCYYFLjEWKBmg5WgsxK0CwegfcfgNkNWTfblLuZbyAOFgGRpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnvx6Zw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnvx6Zw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE21C433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711957696;
	bh=RBvHycDl0ey6FOB/nN8YROkJOH0/oYGaGNaHREYrTbo=;
	h=To:Subject:From:Date:From;
	b=rnvx6Zw7CNurfWktAJBAFqkrpauN8S/C0y+rkzRUAgu7m5pjjLe4o8fZT3lw5vU8v
	 I/bKmW6cJKUX3fON5VNePQXwNHx2c6DAy1v5uta8rP3vXIaMURdahqq78SjCiYRq9F
	 +bDTq8nHHiG2ztnAFPujMFqjg1OoTyUWJ7f+VJtl/0lrzo+KtRtg9ZgpoNupGtdpgX
	 1q9TkYx4xBo/LEyFwc+0rVtIP4VmoLKOMID8oiHj814918v7ZXhKyQw7KDzGHC8pxa
	 VMWdkA7hXi97kjD8YdqNSuQH1FvS6lsgG3V7Ygw2L94Pot7371VCGh6kpHyfDec07o
	 wpUOClr9bhdOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69F3CCD128A
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171195769637.19143.9033738333426031021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df71e8deeb480c4c5e459d2e28352dcc135dc59589cb068b642ac3481d33213
Date: Mon, 01 Apr 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711957696
