Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F63233CA
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745821796; cv=none; b=Y9oZt6TcnNqY+t+bhBWgAQbz6LBRX+gnweE5cWJm+BEkYnNetTAmPKN2ADr0ldxMLMuC1OpWfSLPmdtfEAjbPu2e9Mt+bGtHHXtfyQt3k6uFNVCs8hLcWhYKwjEa9jECVR/jG351Th+rsc8mPLpNVV2EG/Ne4YEQqUNGjI4n3aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745821796; c=relaxed/simple;
	bh=WWtNEHGyQUQuA2XeXQL8Fv7ImcFDIit9sDuMVAiscEg=;
	h=To:Subject:From:Message-Id:Date; b=FhGx0x3itfdan7e+cVAYSh1gw8T/lDEewpLNlBDq0mvZwkUoIgOxOMlePvClznnkdbqWQ/VOZCqfDMWTQpbxdMck7VBuF2FtSlfZTY2KWAJSQJLGTWh/jQ4v3A4zrYyeNkpmetU1QGCD4/FmIOW4cq7I7IcfE/knzDLy4kpF654=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lx4U6Qd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lx4U6Qd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBADC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745821793;
	bh=WWtNEHGyQUQuA2XeXQL8Fv7ImcFDIit9sDuMVAiscEg=;
	h=To:Subject:From:Date:From;
	b=Lx4U6Qd0n5hg7aBClavg8wkty24CCEux0djgwVVJcMSUGk1qBDiCIBA78WIW1c8xB
	 UutzNnihAzK4MIQBuBxwFyOn/7Ahpufy2O5agT+ecWYbRPGUitT/72Fd/midELxqg7
	 Z6pVBY8Jf4i40E//sYeZb0LdwsqZ/G2Kcd0N3xxHKOACn47HaCifGBclhOjMKMv2mH
	 KOUsltGyQufWY7xpWsroeOfJTgl5FRlbRfF7pt7RlgNVl6bI88Fj4YR3XBu/AsO3Dp
	 T09Z6bJMgGrPifBrKNE0/QWUR0x0K3QpzjwaOv+57LB661N+P9qykJ1ztUZzq2jbBL
	 3IsZHPBSUKlug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9044CC36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582179358.28031.15002416732835110582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685fa63aabbce236fa1598ee26ab2ebae2b6ce1be7a7d3479074f0893514a550
Date: Mon, 28 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745821793
