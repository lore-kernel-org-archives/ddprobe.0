Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395D614D2B1
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727518554; cv=none; b=ji2G8szpMOG+1PIDz6ZSiOmtR62jZdlLjLSjcbUDU1g2w8ugDrInAzNkXjBKj5MxaZ7DvzqW9urRmrizQHdk2rc1knw6h9iP9O/6qY+s5DnB8LWF7/DPxzE8EwwY7DeCMUM/nmuK+xm7i00m+Kc9Xv6lS4McavB+N71rhDCsSbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727518554; c=relaxed/simple;
	bh=KGoyFjjIDaSBDbZkN7pNiFE9QF3yVmtBgvBs3+rsQm0=;
	h=To:Subject:From:Message-Id:Date; b=RyWV2xK8iJq81AkSrFBGUX3/rSQFiweFRo9SM8gjv8CX6uG4yyz1iWssJdBJT3+nKugsWNBYBTJUlyK2bCj4LA7N8knre308lsRvqtLz+UF2rKezI2T3VRuJs3TN3iiFHAWbqJfOat2ZU3//KbeNfvfJN3Qn49mbASC+0u2Z62c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HH1twlBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HH1twlBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3B4C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727518553;
	bh=KGoyFjjIDaSBDbZkN7pNiFE9QF3yVmtBgvBs3+rsQm0=;
	h=To:Subject:From:Date:From;
	b=HH1twlBpHVlX2xM8NT9quGR02MQTBv5YieiaJxRojyVEsqQeBMpn0eTj/EfExybIX
	 57Apj0a65W5fGQHwC+SqOykbviNbQncWtAKJHjNWXSJAXcXxLypUrpSC0L3L9Ap2h9
	 yKqCinSMD8xyp5Cxr2YwfwVBjlb+MHWQbFDHBZrehYM3HJXEyQI1MQIl9kQC7onAai
	 NCwuyFkPifxudRStvWRhcduit5oLoxRnFHt6NI6LSoQK4Ltf7+jJO2ByOCsfmlYOq5
	 SZSOw2kzZ5lHSYXdlXxI7GVXgsTAfG5la/sCSytqK9t4eBdqMQO43dUECEMm6FgSnv
	 NNewd6kdNkJ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A4CCF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751855363.27793.5000644650311291962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd440eb551be885d9dbd970a77126a313859f0d3aacbacadce93e90fb51176c
Date: Sat, 28 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727518553
