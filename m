Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584AB1EA7D3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742557194; cv=none; b=Y/v2UUwZKRVsOtSsnGbj5mP3n8BFKaEHBvOH3eeUGOasQoIrKaJXPZiUVGBw2VtlMQ8od/rjvRzATQPxiTE+RXOQ7P/fkE/TJY7P5KwllCN2K5CdvFmsUoefLqR/tGpvtwMCh5VkrhUiUUc6WdwCzP8poSIAMC/mMDu5KfDPO9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742557194; c=relaxed/simple;
	bh=s/N6hDvMqT2bHxDRVOA5EobAJY7C7dLtdvYEIm/LiuE=;
	h=To:Subject:From:Message-Id:Date; b=Q4g839zgVcnXEgW73VMDo+N0/uPzSadozahz0cI1Uu2QwL+as+i4Wm7dLSLWF+PMaZ/cp1z2TPaT/Cl5oOmCR2CmcQ3MQ3wqDHRpGTHZBJqaraaor8WcV54rNj/VbMTKCRyz0oGLrlXY9D3EFcwtGpiEEXMJLN+WAe7ijHCZMHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgbYypok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgbYypok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB64C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742557193;
	bh=s/N6hDvMqT2bHxDRVOA5EobAJY7C7dLtdvYEIm/LiuE=;
	h=To:Subject:From:Date:From;
	b=CgbYypok0ZiqjM71V4g/4WJuz9wiynoWPwj9yGU047rO0V6Vzt7W4ZsUfQZq1CWBZ
	 Ty/shSddZ96+hH2Or6IJ2K+xUs9BAucjGDJG/TJjQMBIYy8mb6mjEpnYO51ElPyPDR
	 QJN7tbp1wcSLCcucZmN9Tm6tvxlAN26uV1usloa16hSjCeYQmnHVa+ks994qyFRZhc
	 jPWYLNok2uBOl4PND+Pp9amg75cnO6Ai4F3hoSavMohVVzW8f60N+kIdbM/Djdkbyq
	 jyHcShGumJZ+tll5XbJEQm98PBUxAxCMKXoXnVZ7A4arbFBQ9S84g7tgo37RTpWo9s
	 Z8DL2MpZW/WCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D610C35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174255719363.9296.16939216131868933593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7078dc84dda1804a487952f984e1e12fddc38f9dab66247a402988a5e5afcc0
Date: Fri, 21 Mar 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742557193
