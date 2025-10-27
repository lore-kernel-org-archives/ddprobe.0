Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9872D9EDF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761556794; cv=none; b=EQQuBbc/F4J4UYBMajpTQYFeieNSnjDviya28i3tlHNFHGlYJwxmuzdA4b8PBqf5g251ikGUCXWMKcRUmfFuNx+zxh7gmhbbtzgca2akmrOhPsJ1Dd7zxQlDFoFtlKctbOfHwdlwyaBZhmhx8b+44jYAVT8iOJ6TnWHPXZaRJPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761556794; c=relaxed/simple;
	bh=bdYcuCXHhZP7jfKg9HS2M7ZIECWLY3Ox+p5dIaVEDXc=;
	h=To:Subject:From:Message-Id:Date; b=n4higBlY6MsEcnoDtkkko7fYjpSX1i3/SNkCYKFwlFPgJlUmTzQL+Np2Gj9Gbj33wSgwJk18ydsoVrU/BU0GvOZygo4sLtqG/JnL0+nGD/Tf7BmpBG6qh+r047LpL+qj22y01ahYb/Ti1DAr+9eEkQgHmmbetfFeNxNrfN0W02o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+v1j3Lq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+v1j3Lq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A510EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761556793;
	bh=bdYcuCXHhZP7jfKg9HS2M7ZIECWLY3Ox+p5dIaVEDXc=;
	h=To:Subject:From:Date:From;
	b=I+v1j3Lq7IlDv7VTr4S28EqdJzW3wfshy9jM0lZZh8dr77pdiV3NvdP2wLYajFzn0
	 b6YYq3eCd4dE/GXOWDzwzlmh2mjX5uxUJE+gmSQH1PTrl3jvD3PzjaYoeseRk6pWHj
	 Uz6AM4M1WL7c0gsAnzVF6THceX/4JC/ISW3xp7f7vbf7qf6Wsq7jQ6K7fhfuhbJeS8
	 /95ZSQfEAaFK0WgJAfJAzywz3xXcDaWex/Fn/NOdc9t8gvIreuNLP9KKhX6k7ceqZT
	 F13+3Omg1SU9Th2ovuQxXlLoNEZ+B4TZbkg94BmX8jYACU7aK39ekpZ5lNrdUmQTkV
	 tljUuo04Myauw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9218FCCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155679358.8589.15063600522687932699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb9010036fed3808ba46b3baac00b35d42784343372a0e99ed274e2ee7c21eb
Date: Mon, 27 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761556793
