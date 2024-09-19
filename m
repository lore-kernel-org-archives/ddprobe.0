Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20376DF58
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726776954; cv=none; b=QW+adP9HEFi3CDMUxQV8pUIcSLQ3Dw0SQUf8luGfF7zisYhXTWhoHwQlN8KV/Jq4YTcTvzuxkwGZAfAqUOfdiEEApeUSHCahI/DSBlmXc64+4afIYHUfw6HKTFw13hkEwwrFxzTW4eeYNMFwxDn0BPMJefQyoY8olf3sUzm9/OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726776954; c=relaxed/simple;
	bh=NcBX7cRmVCVktPvqdXqEHLlShZepISEazgcTJL+VY2E=;
	h=To:Subject:From:Message-Id:Date; b=f3PVZe9xLKr1PlZ/0sMJWOKFQ2BiF/BlJHmsCEvPlDCgspJzWMBXlP0tNd7Qsf3PRVyZV6QZXxBmjN9GSti0J8jLG//T4Dn+tluNzsUzQqJArqSf79xo+MaIG1CXy2bB1QBDdqzpl7yDOnJpUSb8f0EiTbeuoX83/giB905A7z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpvTMI1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpvTMI1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84B3C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726776953;
	bh=NcBX7cRmVCVktPvqdXqEHLlShZepISEazgcTJL+VY2E=;
	h=To:Subject:From:Date:From;
	b=YpvTMI1IEjUKE5SH3+8r49NNAx+bnl++sNyLsLx/9ueztd8zXrXVo3FxGb0bTr8/0
	 iPnJY5WxuWuaTrASmxpRGIMJRMtq2/fPwUtHC3swTDJF41howuH1LYyqqUo3c5k56m
	 S96Kb1IvW9I34N17M93g9VAF0KfX1lUYE5VKmjqH6ALHWnRjdnFwSXRHr0YzZX2BAF
	 qD0DUdsFEUmSfnZK6b7HKzWwPbkYKNqXdL/GnDe2ADnkD1O6nw40V7GwSqG5jAS092
	 4cqLGz+Rzj7pgz0GLiU8YvGifCco9nYzX/hJaxz3qALRv2czQbJYCeOD2bMjOZysHH
	 g+mAZZftQNqPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FD1CF3969
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172677695359.30090.16243815977677546146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32286476996e8a939fe0295e00b94ef458bbb3302b3a4726b753bdd87b531639
Date: Thu, 19 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726776953
