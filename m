Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD4870831
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746674395; cv=none; b=D/C1se3njkLS/6wNcLFEw29rTv5oV8GvpKQPjSNS2JzgjEab1l3ITEU2xQkawQWR3wYBSXzWQRcIxbu7z/JlD3tMD8nF4+BrqtxzoTht1P3loy16iDw9BPOD4U794tLqur7PKjaoN/qz3xhqqzxOlxTN/ltUaJcWgSVMn5YQ5jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746674395; c=relaxed/simple;
	bh=VRqZOn5D2tJfHUiOcJC5S36XSHnjQ8VictiXyFTZt/A=;
	h=To:Subject:From:Message-Id:Date; b=JF9g+CjrBCMrlM4E0zpMgNlgmLLVlEwimbCj0I/KPtswE7WolEKlRFpj0tPikNg1aq4Y+tvlFRfPDNAXeZAMqwlQJJz3BXT7FXqQUg6ccTElos3txF01yPZwvbc1RIQLGRXeLNswhC7rLu4yLA6afts9OOEjyZ/VhNezFUicslU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNMYe3Jm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNMYe3Jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2105C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746674393;
	bh=VRqZOn5D2tJfHUiOcJC5S36XSHnjQ8VictiXyFTZt/A=;
	h=To:Subject:From:Date:From;
	b=GNMYe3Jm/zaywk8+YxZ/y+P+jVvZ/2mdjseHJVfaTZjDf3uilZe8cITTv8Cp4zBvx
	 DqHqi1o9lZ2VNwhdn4zRM9e9Ub4C4hRdKQFdGLTFFYOjsXsyagOJzaedI5VZdC18sD
	 C6D11eUVTvEMBc+5bcO2dO+3a4FY3tz6Kd4Zs90WUgmgP4dKG0WKru6V8UEF7txdiG
	 851/l6haCbZ0QlWiu31C36N4+DifS4T/GNYfwj8Y+0+jPEBnHM692cTPfCgq6I7+76
	 9Yv3eR2nkDd2+33HSsc4fu3RLW2JVpTV5HmsCODuzOhPfWlZkBUep3QdNtxm85NxRo
	 srK1/A5pg5WgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938ABC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667439357.13900.7600224728239962631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e3dd224856d975ed5cdb02d92a1c3e94b72839690516307c8241a1693046b0
Date: Thu, 08 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746674393
