Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F6315E81
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvW9mDUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80977C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703355496;
	bh=ntkDNcxmfzsNAptX7IaOL4vrzgNKqv4f+4kOeyRDqUk=;
	h=To:Subject:From:Date:From;
	b=lvW9mDUX1XHI3qGrt3vfnaskT/UeuVVwNOsX1yCa5GjRlLq7ZcrCOxaRKKKqaNPvE
	 9XmbLvNPi2rm58cvyRmha/Q2mf5fbOsnIGCfBjVMQc+beFysUCGBL79euwbM6mUtgj
	 W1jcNl7oiU1RwWXxfTMq6ddtLXLRGV4NEIOhBXfodYUpFtVdY0m6ed624hmItkhg1E
	 ciz1gPBEoPJ0MlCJcPp6B8bT8xU7svL0lGVqe+gddKOKJqle6NPi6tKdx53//lrRPR
	 zMfTcqiB2oN5OHDKsx6EfO78KlRoKmgJx77WVVyX2m+5oShhmJdhHhL9fPMDDbikcp
	 HFj3frbrL+c5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644F8C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170335549638.30796.6615615806754278005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71416219411b62498da31dd41c2c30609fbfcf8bb219b3daedca1d701605cbcd
Date: Sat, 23 Dec 2023 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703355496
