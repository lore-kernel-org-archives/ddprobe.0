Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D583C39
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720607783; cv=none; b=FBDmT8s3QZmqV2xNPE1gzPvhHqH+ViNpJwaLkcKvQXc2Wu/HSA+NZAL64cRVlmAfFNjkVr6HO2pvHTyZr5RljWHso6P6Qv4tt2VZcXUPIRCaZccUiQt2aDHEC/CZ9o/JVTMAuTiTaQnicvyuY4498uiNn9JSTaUoHrtzGAPrpl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720607783; c=relaxed/simple;
	bh=GO9/vVeYKSYsZsEvP/WpF66UIIv+WwC67cqjGqTYDiM=;
	h=To:Subject:From:Message-Id:Date; b=bvmf67/9jKt8ArOe7sFmV642FfXI+Oc8ShGZh1GjpwiBu4E5VWkwTUtnSkSzVzVbEw76QCzhrEzxhJcn5S+thOCFMHfW+HfA0Y90/s0w8D8ezWRC8SmeHWfpZRh8xfRj0iVeofy439MTnm7vyAGbF8cv9YM4OG/4pS2AihwKhl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoYNaoRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoYNaoRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD44C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720607782;
	bh=GO9/vVeYKSYsZsEvP/WpF66UIIv+WwC67cqjGqTYDiM=;
	h=To:Subject:From:Date:From;
	b=uoYNaoRWflJmIWJdPWD7AV0TfjosDSAnZWpqOU7EC9Jd608VitqYOvCYWuT5uNx2y
	 Ep2eh5wYCa2Zgd35H5Gs/R/8hmGdpUdVKi+gKzEbMiXgu5CEb5kUZVG3dP5/N2nPcI
	 WR6/r/Y+KKjkb3ffq3/abNYyjpOII5gQHmi2sri7K6d0fU1hBHQwO8MqJultghyj9q
	 Kk685zHsOIZZTTyJQF5zdGqaeFk/Si4KU5VM+Fg8VtV8j/D/zXbd/5XvEz9fc5sjCQ
	 3rgRwHHZpOyPwU3y1PNBshWSGUn6ZEBF5PcorNXfwYp83VbjYKA7qZK2M8Yk36UczF
	 Vg8a8YC9cM5WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD5DC3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060778276.28994.14855399253446389056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d8dc6a5d65dea12a08cdd0245e13920015fef8ce9883650946e365bc5867aa
Date: Wed, 10 Jul 2024 10:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720607782
