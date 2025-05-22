Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3838D849C
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747880394; cv=none; b=ADgZGrj/VoOHSF8npO6HVDrFZKiSd61sYpVpSgmQSJDKQlo5Cbh4uE1jqi9KwDYG1ZPfk4pdUBBNH34oxNu7vuY5DAlVBZdFQUzkexyy2EcDhuw9w4SavNXgFHX0/NWVT5QnvsIowIt1yUEo+SiXRSvRLwny1iFHNzfwrYxYbmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747880394; c=relaxed/simple;
	bh=B9MZMOMULr+HSg8ZhDzu+dERV//2lFXjgN9fTHLCNHg=;
	h=To:Subject:From:Message-Id:Date; b=MASjCWeOtGjz0OWY4jJvYIAHnVRe9MqnK4RGFSBplkJNNCGIXM6wYMypAFbe/5g3U1D0wjnmuJy1479lv+NROtxUfzM0PH0Gf8QnZTBiRL7PO7dPe00t7+mhoVFOzOh5Wh3ClOF/lHx+DT6NOMNWCJf32agXmtO03UyxSqjkz1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFv5lbiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFv5lbiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7532C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747880393;
	bh=B9MZMOMULr+HSg8ZhDzu+dERV//2lFXjgN9fTHLCNHg=;
	h=To:Subject:From:Date:From;
	b=LFv5lbiAP7MTdf1BTtxL9VRHI90VRVmlKsOrdmpZWfp4duC9DIX0WOmTMcV5vDzbo
	 6xBuhJ19lw7/2Lg8tEG/9hbgNVgyEE5SFfPFb6N0BaGORA0XSNeelzgW81GVE3Rnnz
	 yCMLJhFpF/8lvK2PGIXeHWOlKcFLu+71nUo1MF8ZvAtxspE0Xg3O6hBoefVpW0g6Si
	 TOl8QqAwS5i9T8CvGG1PKXlJ1wKO7DCj827D3MziUuDjATlP3gh4rQDvd0eRmhAslI
	 Qt3UgepTYxtifSXJrt16f3brMMPkBPjzeXF5F6xEAh/ZTVbML1OrAilr7wn70B5o1j
	 tZ++Pfj4219yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE8C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788039357.20542.4373121172444918957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a150ee8aa11ca20362925f49b4f8f5dfe57f127e5ba131dbcfb1001d97a4bb
Date: Thu, 22 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747880393
