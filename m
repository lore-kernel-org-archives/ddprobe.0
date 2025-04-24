Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C21D19DF7D
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745534994; cv=none; b=YgjOtopf6bL6MfWUn5QqxDudqa4YWXtbsi/3qAZWP4kyIu1gmDSEC3umvMCDUtWfnVqWfPSmYc1rwGAdH0nsgSbcZXWNoIevL6FtVwDOzTfNRccepjQDzyrSzqExrpKMGJ1gJPNLdcBrla4wiCEw5WFiNLqf0y4sfsO0nLeXPpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745534994; c=relaxed/simple;
	bh=vhDOxF/cfEwuHOa+2jHrJWxEuHhl0iOVBTeV1c4oibg=;
	h=To:Subject:From:Message-Id:Date; b=jVzsxya0/PUoQEpQUlHdgR0t0zi9ipDaA2onbyDDmH+ypKpw/2xwuNdVl78HwJWdZNjsKjc5bAu3vOis2w1OZN5M0k4//B4x0uAmvdURY67M0PTzOXWvjV2xUuyf4mf2Pe5Bcf2Bi7oa0AI8k5eBY8jXT7vO9r8xWPjvrRpa+5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vyxf9BKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vyxf9BKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F9FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745534993;
	bh=vhDOxF/cfEwuHOa+2jHrJWxEuHhl0iOVBTeV1c4oibg=;
	h=To:Subject:From:Date:From;
	b=Vyxf9BKLKL+uEwV+XjdV1s59dkTAQXm8OW3WGazRLRKQ0mTcwVF4dr24c6cIDKNbh
	 NKJvN+WlJ1hWGI2Kbl5+sx80kjasUKxVtNVXVOZXtrg0OP3e75zN7eouipx0w1swGp
	 P8IO0qp2Ox37t1I/F3cgwgFYQ/wL/iM0P8df+h/+VU1Fj39d4SPCvGPeCruHWi/uWr
	 yJylPsPrvoibQFFFUuBLiCodWhTcyYHircDeqS12Zb284s3njOvJfcpzR2AiglzlEE
	 j2VBLDKNBfzSKiGzuNNhH7ybkrsEj0sUx6yypIQXeeFXChz4qwQOHtDVlh5V/DKlU7
	 9huUp5T9p2P/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E4C369D5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553499357.17014.1993868704603000556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dbaf7119e9c6e190357ed984bc24661343d0f3bd987164a0e1cafe084600e1d
Date: Thu, 24 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745534993
