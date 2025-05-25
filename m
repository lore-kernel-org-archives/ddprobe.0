Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D78539A
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748166594; cv=none; b=Qvv5OFR2YyAcJv9fuEBYe2fx4E0oGVv9itFrdclr4d86a9lFkEIWr52SkoUYuvkifh3oNAeESUJoT0RhJ4jhA/5y4XwY9xWa1dis6eKqqwd+DZV74+Bj8dWLv8QHTH/9z/AnanUOeYulFFiLGMATbSPL73J/DMoftDFnqxXyPvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748166594; c=relaxed/simple;
	bh=U1hGPWctDfAbbkPIdEGf5JCC8sshGIPFgK50D6jZHKA=;
	h=To:Subject:From:Message-Id:Date; b=GijYbE9ozT0uwXuihGVbWsSZ5+rqFTyAVGGDCyAJ02ufrNVNcFUMS1Ml34TiCHAYVeDtPuM3PKYmzpm0ge4HfVfvotJ+uxLDKlqNK+7aHIuBQhTMXiBPuKRoKKJ0b53VIz240TeMaMFhY/uG4e6rE8bEwJ1L7BOeRgAa4drJlTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+0fePmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+0fePmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B9DC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748166593;
	bh=U1hGPWctDfAbbkPIdEGf5JCC8sshGIPFgK50D6jZHKA=;
	h=To:Subject:From:Date:From;
	b=c+0fePmAzb1CAsfMBtlkhOGSK0Z8VI5FWbZ0c8j7CN3zVQYC5jPG/X1cmhrRyNVzV
	 p8A4tb4vkuBE/Tuq98DapmrCmOVF1oFhYGhNi3sJP0A9tg5QAyy1Hq/KiUhFFA3ktS
	 dy2is6mhi8kngvCqvKNcLkyHxVen9zL0hBAC0NeHFUIaiQrg0A+aGZxdxf877AKALG
	 mZfr7kOcyY6WI6kD/ZzJJxAJmINvoCqbs9hbOHjPJhTeLlyCf3Q2IgfSlABDl39LOb
	 Lbzm7VWfv7CmtVaJ2umE+GD7eOr60ZCxgoFv8wSFWKc5U+uVA66IKiYKh29AJKO2QF
	 uoTwno3gdwGYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9249FC54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816659358.2392.6852662598559620308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1042f2b67e536b2c214484f468b103f93b6d3072e9b68095a20dee2b9fddd4e6
Date: Sun, 25 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748166593
