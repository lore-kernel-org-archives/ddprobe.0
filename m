Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5495C19A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738406754; cv=none; b=pOCTCISrXnL7F8zQneKEzsrJ50CzeG5KW/nRNNbGbR+8GGlS5xe087HNWxSbpPi9Ro49oFiB/oiwhVuMhCJj8Zui4vdbJjM1LXVrjrzeBzbyQy3MS2k3i4C0Uq/W/Su3v5VupskDus6Iqa8pWkJ3l0Nn54nwKH3zLu8UpaLwgSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738406754; c=relaxed/simple;
	bh=yeapx5+MgeL6nsIVCO+/DOsdP7lUfWjbb7t40Fw4Ofw=;
	h=To:Subject:From:Message-Id:Date; b=oW7Jw/8Ynb07qxRnsxEWr4I80GCqIocJH1YB3r886Aj5Wtb/r0ZwV0xwsLb//XIZejC7JuF58JCFyxCHtUM7fKpuRfSJtxo/MNRTuER3ImIV70hikcBo28BGRBbPktW5ELu3bkngrIri8NDCs2gNiUCo9shK5Ze3VZ2LnLPqyWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKoxtZa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKoxtZa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E9EC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738406753;
	bh=yeapx5+MgeL6nsIVCO+/DOsdP7lUfWjbb7t40Fw4Ofw=;
	h=To:Subject:From:Date:From;
	b=RKoxtZa/Kws2jIBkBCtdmNSgJvTv/3puTOpcbCbLB6z7h7U5Iej+C4AEfVr6GYEc4
	 y+UmuwTILcGa9r/lGMT1BMz6j3vgmW/4t1ZWpSFhMrYyuzqmabPwlI7AhIJHXjb/xB
	 Mqj7kxyp+O/g01+9LKs0Ov1Z2Q+hjpa+iVupZGnAOZ/an0UHSm2DvdzuTFjT6ktiw3
	 FPMvqo9KR1fSssZbhyNUE2MbXzo/LaTFj4jghTnmpnXvdvdtXRFo6xoxdDxZJVKNpY
	 T2fyZpNnSKorkQF04pU8FkNC6YnnGD19xtd76fU/NDPNVu91KDM6yGnJC1vuikSbHQ
	 Ent0Lhx2jnPNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D7EC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173840675360.9771.5260962971980500976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a969e747b07005bc860a11973a1766d3b220be66a2e1ba9289b6c54c3183afb6
Date: Sat, 01 Feb 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738406753
