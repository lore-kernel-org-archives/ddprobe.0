Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44790211A10
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738673754; cv=none; b=BX78EYHQbuNPOtuoMM6K87dwsEj0P7CB5FRRszkUi9hU/7YXwqrfszhavlBztn+S/YeNCw8Pjz2oWYpwzlVgt2cOsmM75tkHw487smGju4auVTaF4I6Ifmw235y1zRDJOFKxWiVAG+Lx8tqjlZU7yx03SmokZShJnvU+Z8BIrl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738673754; c=relaxed/simple;
	bh=gPN5EvWJKaAary1UEuDaoZ+ALXM8ZIl9nEkRRZh4Pss=;
	h=To:Subject:From:Message-Id:Date; b=YKYgqueL4BEaNZP9Esy1D/OoYwQ7xS10w7Cko/6NqXSefcT1j4ykcZOYLZ+AT+wdSPtLxV2EqXA5Kq6jr9GtuPNbf62QYZPnSqqCNqnUR3Aa/qknBIBeIbfcMBC7bieXiErlMze+2hIcRvF+OMjKfYgaX23tUp8f3u3UjHOYkOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScyFVXoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScyFVXoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1D2C4CEE2
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738673753;
	bh=gPN5EvWJKaAary1UEuDaoZ+ALXM8ZIl9nEkRRZh4Pss=;
	h=To:Subject:From:Date:From;
	b=ScyFVXoBQyLlkJmQpGqwzrWklxresnSqpIMckyNKBQxcKadhABUSEAWUKpqfU95mX
	 od+KdJiiZavCwjz6+k6S3Mw6KQqiUpKF3dy64xmS0bBVU+1SjPA8vaJY1gftuPqmZ2
	 h3yHWZKynuVDSnKQGRU+MY/30WrKW4jdZr9OJxsxPxzb7qez79X8jHUmPhM6mSG1sZ
	 GaI+IhuINPWfCZh4lrINCKvWRPITHk0gRZjnzjal+I4J4xjzDXwsiEuR6DPDzqysZj
	 7stzosXSePkoTBsBYAcY8viS61CgNQ8XdEr2ZqgKwCZ2JcBb+Fb5J/+Qe2rtW4yVJd
	 8D/Ze2VEVngGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C88C02196
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867375358.22179.17857934880896617498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af6e6ad4113626c778a4beabcd807dfa633eaadfabff19891ac9224f167f573
Date: Tue, 04 Feb 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738673753
