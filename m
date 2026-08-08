Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DED4B04B4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786230034; cv=none; b=UN9MNZYXoMsOjNILtzV7pR23Q/Ss/78rwGpbX5TEGujB0GGwLD+XR79sZL0lcQYMc0JE6M8l6L3/FZ59nF56RfkvRhVxs0pbZAZ8080nBSrNeXGGnt+Vkz88xru4H9IhwuFYdQBuwndDYBdBXQ7c1c6xW/FOYABm7CRnlw1M91I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786230034; c=relaxed/simple;
	bh=vzPA8hi0Pt2O3EXEe3zY70if+D7a7XMMcjM6gaP3QOo=;
	h=To:Subject:From:Message-Id:Date; b=TQKlZ2bvpEG+jxaM+hPMwZJW6A/5wtavM4BKSmL2geeM20YjsNkfilzneQhPoy2VhY2o+vqmhqP1dQTAnR/VtJHFUmxV5fr7MKUbSpUfj+qe8CS3kQNXOL2p+P7rHOcGFLTXcxiSAwEk5iQFijKLat89bAtC0F0QmiKCCxv78MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3mF9gZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3mF9gZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FD5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786230033;
	bh=vzPA8hi0Pt2O3EXEe3zY70if+D7a7XMMcjM6gaP3QOo=;
	h=To:Subject:From:Date:From;
	b=B3mF9gZqIrXZi2pwoyheTv2EakUsXcuau+7mQhxaV9ic4RrPFhzP8LytrUFpscC/u
	 UIeFi1vvPyubAQ68svi6/EXJbZMpAUKR6QvBmzvNa688bQ7GQ0DeVv2JxjEBTlGNVp
	 LiUlTvTQlVNcOv4DSlk22b8ijMiYY0yX6AaJiQGSPCdBpDvsv/6rRo6s6qWpsGiU9D
	 kcR6GXoQUL/s24JYialTzFy7eqE53VvHlZ2KLWFyQlwE7A1JgId8gekxmdKDIo17cs
	 f3IxiGYuvK2WhvQCJbG/LYqAAJnNGhS3PAZ9DEEcqfJQGjWf7+9T+XQh/niNPRPXss
	 6O4OAQBRFl7iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B068BC5AD44
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623003368.1315.18313412006088243659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453e38489ac9d568f17bc6503f3214e7d3b16381ad531b7220083e891be567a6
Date: Sat, 08 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786230033
