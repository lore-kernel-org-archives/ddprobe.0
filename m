Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8A92836B5
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750442394; cv=none; b=F1DU+Aktc1w84EjZBVsrR6Z3WqgaT/AqOGqgQqrZGwFp+ffPEBTGZNftDKvZ+3c7buY9oSsK94L0uNLzlsU9pBTOEZ5+ygkdTp79iKG9/TWjqTHrL7Ib6CJWVQ2jdQpNX0ytQCBHrSCwDZd3axXwETNiH254tT6qHKJzLmSnfC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750442394; c=relaxed/simple;
	bh=BjCDFd1x041ReWZSxWFpRwDgBEVTgt5uvAxB2h2Wwck=;
	h=To:Subject:From:Message-Id:Date; b=JLkq3hgjZ2jRc1WmJMLSImiEkoQV98mgPYh6bkzOStmjF7bBqgwcNZH4ya7L138s3URwpPudMdnW0+wVz0nrUqYGrBiq8wlE/tc0Fq1hlVDMbrbStQHcqfZAkuiOAL8jK7n1fNk4RZJ80XB3T/znVVVc1kElUQRI1jvmdUvIQ5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEtwiBSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEtwiBSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F57FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750442393;
	bh=BjCDFd1x041ReWZSxWFpRwDgBEVTgt5uvAxB2h2Wwck=;
	h=To:Subject:From:Date:From;
	b=QEtwiBSqHhHU7rOw8k/U1MpETM7xn6wrpz1y//MtzChyzJEHjTFFQWKGx4y3YSiYI
	 OECev3KDkMUKzhQqESq7M7uc5DIAQmMV5wUbjN+1GozvBveNkRWQmChuIyOIsqneHL
	 PrcPEOeH93Q1dhqAJVrNvXQPyOdPk0okMto5q4JnMBZcJv9CCDv6fP/AlVoiJI3Wfh
	 0K4anDByJTT3bzNOf7ao3F02Lz18ZInI7JDtmz1zZ8WVf6C/qwuDrCDPhFGRq6ZTw1
	 5t7TZMCgo2LrR3HnLBirDqWtJRsPqZ93V9VuiLq/HG1g/AM/X9wf7xgwUal6KxCL/l
	 q2EVWZYYHOHeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CEC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044239357.20869.16899837472003060077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71cd9aaa2777fe846ad8fc937aee56202689bb99f0144a118c558b4a5381a125
Date: Fri, 20 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750442393
