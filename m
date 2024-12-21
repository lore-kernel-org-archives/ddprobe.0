Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509821D433B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734815754; cv=none; b=KyiuVqcsWtcgH6SkYC7f+9OX20Z3MQMg1zPm3evDYJUVJOiJkb8XZ45UAMhsuZ3igYijdDN24YxuVzxWf7inAxwiNkjrSLxqiAmnTQ6RfanDfRCzu279UBR2hcevhMV+1D476lzaZvUXtGqkwze5fIMG9y9N+k1V6hKDPANRLFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734815754; c=relaxed/simple;
	bh=4wx4nyVDtsWoKOfUHSj0fqKga8HNrtvI0ORAgZRL8PY=;
	h=To:Subject:From:Message-Id:Date; b=jfpt6UG+/Ij97Rm1cL9PEi/B0euf7wPZTt298Wbe6wQgcDjEyg4ZzidGN4owmJVrm1BasOHZdV7tO4dN6gE84pFDxGVnQIei3lp+FRn3zZ/bQSK1UHC1eVOZwYlFqj6132F2nS+t8GJspcncivyyt1wP5Vy0QJx6914/PQe1RIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBgNbuGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBgNbuGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A77C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734815753;
	bh=4wx4nyVDtsWoKOfUHSj0fqKga8HNrtvI0ORAgZRL8PY=;
	h=To:Subject:From:Date:From;
	b=WBgNbuGW95LP/Bc+x32ABxrF5QgGmXY0XZoS1Wj6+y74MT0B6Iv4wPFDKXvl9grU2
	 yTDu3voh8GNDFZh+Wu8i98s4SPw6EN84HP+U4odtagXoqU0FEk8AIDzdU/j3PI6ZAQ
	 wF3E4CBIOpLPm9zjSy6/Ebgwsa8MXNnGZi8G4NxgoJyevN6rqudKzfn/DRt5t3wDDb
	 oOjnqc/6Ht69PPKoGqkNbjwdd7ZZORonLZxfM1rk3HQ3J8xzYqHCkH23cm2hYo3bzH
	 Y0VEpUzuworAzT3Ha9EG3VFKxHitneeDulk1dK1fk5IW68M//ISLRMqCxKmtJeFtgq
	 ajSoxcfDNcHgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4B8E7718D
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173481575359.32093.15056982735043596898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf59eca6e6cdcb810d31381c03b58e095599d823641676fa30d2330d83fb88f3
Date: Sat, 21 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734815753
