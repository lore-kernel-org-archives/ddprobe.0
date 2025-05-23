Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312802AD2D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748027395; cv=none; b=Nz01ilL9aKUGRWTFqmQUw0yUyQQxFQkvh5fbczkjEErmeXSgXQJgS/dITbkeXOQQa6TujJd7UJ7Dxb8GtsZDFEz1oAGideAmke7lLh+jtBQNaok3Vi5fvzH9xkzS4ZlgTALDvXPN52HvHBuaUgj2z6tJZxqeGj/qQtmSNKvBy9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748027395; c=relaxed/simple;
	bh=itEXggpkQP6J026T7VvZVJui1CluyFSfl0eFOz77DO4=;
	h=To:Subject:From:Message-Id:Date; b=QfLitMzptzboExDBJC3sb2bJM4qQb10T5AZnM2oTt4Kd9dA3u3C/4aYm7M2W4qkH1MftgC5NMPKTs4ths+OLIgQ4R87ab+P/6/LJhdFZoUamgh9uoVf27DzkAM56ZGxNsDzAZGbzyYsn0cE0oXEeNWGxxV0p1gweAFzZzkiSyc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJBLPEqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJBLPEqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1834C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748027393;
	bh=itEXggpkQP6J026T7VvZVJui1CluyFSfl0eFOz77DO4=;
	h=To:Subject:From:Date:From;
	b=OJBLPEqchxj+8DhmN7h9TIXcT5WsJc8HVVPGBnG9srkm55Gk8MjmEpta7SvAGlBTx
	 ykejNrGcMnYqoT37V8vwZe1rObqn7jS91FZbxfUtJM3YT3CTifRvUhfXbHAOYyG7XR
	 Uz8wuMMbvF8yjgB0ruYEUAFeAAfDj/Dv1zrUhXB6gKfu0jJgOy4P1KllSI4QrIRPRK
	 O/9CiWws31ZC1POa3p7di/P+LEw4UPaMed+vU2pxNZggXh6etiAX8lZ9nmc5kWAwi4
	 EO47Ra3LMS1X1rbZC59g5R3g6evHj8sTIwxfoeh12WZAk5GyF4I4L1UuHgS0BEJPHM
	 8O0ndzfs7szoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E3C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802739357.23985.32051561379480177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e11fb30bc6303bf195267ba7262abe1e3123dbf20a218aecae85ca7305a4060e
Date: Fri, 23 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748027393
