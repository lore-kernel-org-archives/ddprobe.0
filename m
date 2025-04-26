Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4318919048A
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745691594; cv=none; b=EvD6KB3usewvYX9ode74EQzuo7hxQFdmFRKTEy4MqEf0QOm1QcRGye60ciEUUP3k+oSZezLHqbwvK/w62vOUap/zLRRq2mGlaNq7cIhN9axLzyX1ohO8lfGjkd8Zqu3XbfR61KuyMrmF4IZ5AIfyWdu7kTBUjpS9drrOByFumhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745691594; c=relaxed/simple;
	bh=tf/4l8rPZS98YAMykvUg8iP8DbjoVPNzMyYRMkRvL1E=;
	h=To:Subject:From:Message-Id:Date; b=geb+SPWGDcRNofRqJXoFdzrPttKZ7AQ8BQGuOx2GmdeadwZF76uF5z8Zvgcy4yNTB2K2tTl5QCUl0qXJz+8kfZrly7T3YNMohKeedEUR3wH8J3b2p7JhGFX9wWczW6TxewwpUO1Nl1H5Z0QI9VLTnKO6XwNTV2W7aeCkMElcfAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kA9esEJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kA9esEJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F00C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745691593;
	bh=tf/4l8rPZS98YAMykvUg8iP8DbjoVPNzMyYRMkRvL1E=;
	h=To:Subject:From:Date:From;
	b=kA9esEJ7LTKZdkjCfljsklcLSCjaCNYoM+dxl7uq+wq7wRO2piP23TdXlPtpQQ5Sm
	 aqsvTX6FjV/InlxA58Y9+oAssHmbZwcqNdNvG6O/ebIbJo0i1uTzRNuCrv5J/wrb5W
	 pn9R5C6zoPSzVkcXSH800oWj16+Y2tBjN2xyVzDK67qffjwIvd3pV8FtKSHB0NpEYf
	 I5aMQNDIYr4iUcyM1VowzrfrnLSR8MHa7bx0KgXDOzkvt1B0KDShVXfkXfUVyUoL4S
	 wVdSgsl6Q6qfij+T95v1uZGLhLzQReIJ6qRZLi0ei+jb74EPQR6m4YsQPDX+K9s0AI
	 2iuYIUEA86vNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9289BC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569159358.26253.12745759871699920985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062272634dc17260af80c2ff6baab575aa5e43ef2c3fb27b75791af318cac837
Date: Sat, 26 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745691593
