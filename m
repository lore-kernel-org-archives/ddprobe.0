Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656C512FF65
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719682463; cv=none; b=Kvdmq89pYzyHH7P+FhwlD9NP4QRtxNfTXrVFsTmaMJedEaCyVd0NoBazaXyxu6Qd9NvW95DukM8VbVBJra49Wa27waQcTWYYnGYQ3NbggF5A7MfrDzcxujTTlC20wyAyqmtngp/s6/vo4PhTjBZwcxobMsP2Xi4P9KRFX08lOwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719682463; c=relaxed/simple;
	bh=vRXvjICdE5LGcdsodXJD82QVEqoFt5V0Pgv+Wg+zvNI=;
	h=To:Subject:From:Message-Id:Date; b=kRHIc1/g4aszgqtp2oNSR6ltgGn1V+mvq9thEqZBfyUGA1K0PulyZuTOAaJunxW3eqPeJX3M/Ns8j+c/e/SKztoHAAKm8kheRUf2Kk2fK9BaTBip3/0QsZDVGidvVeRiqMXFxszhAUnGYBvu6DWQgt9EHvP7CjK1pzOs0bVgRto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTlll5KI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTlll5KI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A40C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719682462;
	bh=vRXvjICdE5LGcdsodXJD82QVEqoFt5V0Pgv+Wg+zvNI=;
	h=To:Subject:From:Date:From;
	b=gTlll5KIlssoV7bHbHvWnyQtfhWd2j6ADNRryUrLFFDULDO0VP/2mYW2+kKBP979W
	 dq7XfVNYSlv7lv25laGxuTE5rY+rkPNqYN9KR/ghWUnfosMF8og2ZW3joz4MhsRjYZ
	 m5EC1pJ/JnO9Ny7U0IoQu1DGIiAd+NPbJzltfSXN3wxJjDJuN9PEoszkC6b1nOjD7C
	 o2vAup4YuRwx/dNHyUmRfLy2awfc5YNz3Y5yluK2C4r/SuK2bA2dZZ13IpdWw2YoEZ
	 sAtA+hzlef/WiGdCrIHb6pA3JarLxS+mps3nqZNBIYNCwSBXNE5085YRG1iuz8B23H
	 ppU8bW2/wdQGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4859C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968246276.29572.15956754611178004060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108988e6418409a61dd37201f0456fab82b1e74be47fb7d7593577629c4f09dd
Date: Sat, 29 Jun 2024 17:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719682462
