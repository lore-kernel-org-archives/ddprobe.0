Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2999923C4E9
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772676894; cv=none; b=POI2tp3Py22uFKsFtL69aqmz9kQYy1xAJYnIZ+TC30oHWWOpY1ny7GHQx/TXKi//CAzrM/T+8KKOkNQFP7GIL1whHlE1zyV21O/qqV6CZLIz9rM2sXqau2au6jX3wfMJbDQbnc/T0MFkEfN74Bp7xCllM6U4fsbpFr6vJPADzkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772676894; c=relaxed/simple;
	bh=nfi4u2jM1gzctQ9LCxxQhmRFWk9v/6XhGj54t1zFQJk=;
	h=To:Subject:From:Message-Id:Date; b=jCMR1kY9tNmd7R6fVDx1AXEIkiqf4t2iQODE07tSwZ7iWL1hpVXfXqUxQ813UJYiryhfZFHgiCBxU8ufNzHY1W4Qg3FV3mhvmt8YfxO0QvqK3VhzXHpidS7kIRgLiOruKmbZ5uWN3KU6DpLolZVmerZNz5U4UStLvgt0PW4+kec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddY3+TN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddY3+TN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8592C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772676893;
	bh=nfi4u2jM1gzctQ9LCxxQhmRFWk9v/6XhGj54t1zFQJk=;
	h=To:Subject:From:Date:From;
	b=ddY3+TN7DUgpLfwbvU5YXmbnFd2TNFoGqS+RjYFPaZrD743fZT793BInI9VZ5bYtb
	 P3Jg4sPG1O5/anuW7aZFs6TZ60rcgsyZNbtSNRm1VWNKkmOnjZDAlBZptqw5AFjg6D
	 pxq0xDVDtNB7X3Q6QWuty/lgWPYtOTzcBXYpGfyW7zwvCvBpDLXN6+AOWSLBwpRw3v
	 uekzc/wmGMZnzE7iSKw5Xl0b2MSBwf/yLe6bbGZXuTj8cv/+CktGPT/UtL9IJqF9cz
	 AlJgS3/5Q3ZRK9rUprKWh428GSM/bDM7AJjphrLC/7uUCPEGR0yvT1rzUsvzTCgAPm
	 LpR6kIry4X8hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9704FEFCE43
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267689359.15231.11345248665812100105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86edea86365101a00b04f140f538f6ae383945687633e86ee371d9f874dcb62
Date: Thu, 05 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772676893
