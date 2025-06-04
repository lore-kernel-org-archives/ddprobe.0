Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2271D8E07
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749022795; cv=none; b=RdujofsbchtLYn8kOaHfsuoGaEynIPGiDKveZy5EpgUsTCAbDDTVNqpGyiy0EsrQBAZ7ieIiXBnIk6n6fsXcnJQ3OqmCNsbgZeqCHsrtJv+X/PrwEpsQhDXIUtmWbFEBHeDhh82DUzvSRksZGkpWHHRV6PUbl/QnzK+2EUJLtqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749022795; c=relaxed/simple;
	bh=w9iJ2Uv9ZJYtnnkdcpRA1tH9ad7cfFi7I+vWJdO9R34=;
	h=To:Subject:From:Message-Id:Date; b=YgjRvipC5VVEoZ1o5SrqH0Dx4NnDTsX2Knjd1aZhzdqC/V/msxz/UxjfNYG0t6DosdqY8y27USL/07HI782w0maVevMO8FVxB83lCSXsYe2SM6JEBWQKk/w5UeaMQBqd6VyytyASNUzPhW1pAz1CIoo96vMYGD7d/I7D1AvSlFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzTmF2aW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzTmF2aW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DEEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749022793;
	bh=w9iJ2Uv9ZJYtnnkdcpRA1tH9ad7cfFi7I+vWJdO9R34=;
	h=To:Subject:From:Date:From;
	b=RzTmF2aWUeFbTmj8OOpCjqzQpRwIU1fdHkYljjqYtU0Un6tzZ7+uEs/XN9n5RvJ50
	 JYGAK3ucbVIBzmgL7uPuhMn1zuoce4vHHRSGtYt5rUDRLNhZPeEl6bhIvnYtCJ+sb8
	 6lc0G/TJMJP5S02A0hYW1/YHvrjexGZ0HuHvdkH2l4QLXrlcNJY4NbecoohItaKJQ4
	 2UlqPiNtV7adRIuAzBEhKREnZ2KaSa9VLMOUWGmbwJI7nnNVL+JOKV3gidu4U1gHIo
	 JWsywdcf9okMbNEpHq1/XXXxjAZ8wZe8pD2US9WWzIhFbr3UTe25925oMNAWY+h5Zl
	 CCAr7cWGNaSJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9199BC5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902279358.21483.5921663324020702494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13f2e1e2e151bb2ff74ebd88cbf8118315263b2458e90b1586e24ab0e140219
Date: Wed, 04 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749022793
