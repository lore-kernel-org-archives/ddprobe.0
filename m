Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8C91547F5
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747893594; cv=none; b=M3YwZfLsiCYreCMGSXC0F8DD+4kbpbpBRcRJGkAvyFjSI1Da0DfTRHEUYquOn9wP0XA9etQM8XMOSB1T9XtMpqOB7Sg4dpWc4QN5RzJli1D4tHtYw/I6Q+sJaGFiGfqKk0kllvi0MgYmAObZm7+Agmvp1/0LthnL+fFTIe4JnIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747893594; c=relaxed/simple;
	bh=fPvfIsicrPeVTcaxc+yIpq6lB3qIiKuPrDQw9SeMZzI=;
	h=To:Subject:From:Message-Id:Date; b=qj+MXyBRkDfPKcTS0XFBJPiSGtTyrhMM1ZLZdAebiX9mJETFuou794/Y8EMgb98iQ90x+BvF/oYHjBP3vvzRrea2/7HP8M2eJZEzqZl/G7bO9TSmSWiDH92oLBp6mXsUH8BmQkA0Vw1mHddqR1CSh9ucoLRvVjAlKBT8kPnzQes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsgMw8Du; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsgMw8Du"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B71C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747893593;
	bh=fPvfIsicrPeVTcaxc+yIpq6lB3qIiKuPrDQw9SeMZzI=;
	h=To:Subject:From:Date:From;
	b=LsgMw8DuSV0L0GQWtr1iyTqgGS2vxzCpghBeNJSDEzxuX1NtOjiBhHdnlFAm5piql
	 BO+Gaqd50hZUYaAaset0qAqlHrwdjupx9NpM0uoVsb0VjhJwE209K5D7A2Q2vrk5Jw
	 ftWFz7idT3WsxCEobvYz8cCMxZelvl2W3axw3tgPZLrVZrhuYCMjjgZZXKIMEhUbsh
	 kX1PsUlzkeEQr7HusQsBkx4G2ULRL/j4lbr1L7KzGC1R28wUU4qxJ97c0KJWtNjAML
	 cDmwKWEteK3tke1xdKacPFBnhMQbucNNFmlRDCV+MuFAJZzbkZxBrQ91oyrQPf2i8g
	 gasnm/ATrak5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE36C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789359357.3218.5631431452196738580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c952dcd11d988c11663a1d5c17ca4d9dc95aa251cd7258cbaab118379d074024
Date: Thu, 22 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747893593
