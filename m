Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71595158204
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 13:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717161863; cv=none; b=VqGL5qv72X0WmTWaGZ+Swis4CY4eeHWr7uOg1KFcrolrJ/ByZXTzB+nJrlio3np9+fnaAL1Q6BW69W0UACQUz1/s/jVBatzYAyCN4PyMoxVDqk3WBDVczYq9woQHhWevI5/xDEtThAEvRlcK6CrF5oqgiGHDAC9roADrn1rasAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717161863; c=relaxed/simple;
	bh=3vzMk1oi/3ReMV2denAFWF+azAJHlN/6TRL4UtuGcFo=;
	h=To:Subject:From:Message-Id:Date; b=QDoyYc3vRN8s2/JhiTzfZ+P0ZYUUf6UfTXM9I8e7hUp/zYcQIRPQkzgpE3xtDfVlsIhZIjRnsIJEdxEDwR2It22RT5ZGiqILhAR7XQIuOr+OsyZ1igAAuxzHyvS2BIg9SAWL5tk9RoyvxKuqM9WKnkG4LHLthKXYhj1ezhO0j5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAkti6Pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAkti6Pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E767FC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 13:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717161862;
	bh=3vzMk1oi/3ReMV2denAFWF+azAJHlN/6TRL4UtuGcFo=;
	h=To:Subject:From:Date:From;
	b=CAkti6PuW9zoKDpR7jwRMdU/+WHYcbdcGZ5VNQ1UrwjCsNu8BeMnk3rZZy/QlqF/e
	 ZELV5RQTwgTT6r8pxwdQmbKgWXTMofTnm8GdjIN/dq7IEQTbMwZXSEyQXaZxOt4TOH
	 FLylA52GBN4Z1zE2W7yE8kVcASqXVPku6R3dgaoyco9MSwG8EE80XckHY0qTcqwjqm
	 Nw8MqIK3N9Jnbpw0vbWCHRUAKHVtuSOUAVonHpCmqXzSq+AiQjI1XR3rRBuCobxuHA
	 phf1wRZte2FMJHv2/PZ+V/ERb97fKSgONmtFUyuZpKJJOnV6regiDny9Pt2gks+ed0
	 Svi/Ik47fqGvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFAFCC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 13:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171716186283.20211.17103847131049587016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7bd818eb5dcc6f909928b4b1b66a7dc711cf999d5380798403cdb784015840
Date: Fri, 31 May 2024 13:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717161862
