Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1D715746E
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766301834; cv=none; b=ENcTCXmHo1IHTJU/UZEsqaKqUfbYc12BOyYibth9SgHe0lOCbKmi5YntaBSdi/7uXf8DhfjIp+cJdUBcXabtgr2yNyY2LX5RdhnATpglQDPRbWFqyG9rfFwuW2VZgaQnoucUakfpU7dDPqPTr9mKBOCaJ7/vOr2HdOgyoAf6fNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766301834; c=relaxed/simple;
	bh=RkuclJmv1tgqbeiNcZMuxfLa7wnA7kp0IV3vAkdcne8=;
	h=To:Subject:From:Message-Id:Date; b=mGZCeWwqV7w8paA8tPV0JIw+ajKDsGDxHOWkYIZGVqnZyyO7tT4fWsxLipJ3VVO1dPMIa0pqHY5CENzoCM1wNgON+QZ5zuKJFGZFIf/frvBFJ4UngHeFzXWxLWtBm2+6WghCa6Rv4Mxh2n019zf3sNawPNotQIU6wPJ8Qsirbog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEpdK1UC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEpdK1UC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09A3C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766301833;
	bh=RkuclJmv1tgqbeiNcZMuxfLa7wnA7kp0IV3vAkdcne8=;
	h=To:Subject:From:Date:From;
	b=UEpdK1UC85QWUFJ+TtDXnFPsE6qNlbVSuzGX7E/44+854MBN0Znmi3qDhZPWZq5L3
	 ydCBQA49ZDm7t5bGooHex10j2nPrA9jsYEp6lWs1JHFJXzI0cqpi4SciN7VSRn7QX1
	 yuc8C+v9YHvlxDrrTCQRIZrvCYC6AlOh3xPMCGvuAMkOlTVkNWTRmT7s03NpkNHrQc
	 K9sMiLjvrWd8ipnb0tBx8x+EgM3gCUBIOzG6TIE04T0HRyKrfjFzRop5ZTYHHlbPe5
	 XC9gvvtF7CdyXES+cpy5HjE4SxHzpB9CoD0nyujMrjWgFUfplqtss4E1JbtK2CWz8/
	 HHEcv8mKrNceQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FAD68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630183357.1957.14263438278952076283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57810ee46bbbcb159092a861c61db6dcd70459209ecbf111f6eeb8b18717000a
Date: Sun, 21 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766301833
