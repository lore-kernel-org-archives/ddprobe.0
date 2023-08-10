Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622D020F92
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 21:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B59C433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 21:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691703188;
	bh=GWvs9P7DsGk9CWWlzimRJNIKEcVacwRMLJ4hUipTqR4=;
	h=To:Subject:From:Date:From;
	b=vMJVZV98cyb63CKR03t2jLg/9VXaphak/2A/uWeL/vgeYLIVGqU8JfT+U1SsZJWY+
	 WCgG5kx4JhDkdeEGjBTAHqfEw2NV1JyoDZpOd0ZdRvb5gvpjH7jOvHTL5dJsS07MnY
	 UD3pUPnPjlcVY60x+yvY9CgndugsT/mabfhW5O4HSytTKuxjhGkvGW1A25k4cW4J04
	 PGfgtvO2Nmq8iZNTdNvrnYJzj7Mx8grThJ5FXrGELrWWUahzPm/oeVIzxi/UYjLCvP
	 pWVrvrMZn3yCHk4STXAXnx/V5YO5EMybmlCHZ3ttJ31cMuHX5L5Mveo4DGP03uibEy
	 FLaH8uTtCEGZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7840C04A6A
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 21:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169170318867.11742.16981835060683240467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c9b6d977eb9facf18083ccce43378949d013b989e70584cf53aa2536e489ed
Date: Thu, 10 Aug 2023 21:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691703188
