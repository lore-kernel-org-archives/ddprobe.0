Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EA013AD11
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734597954; cv=none; b=XyniYa2lotlUX6MpoSvJqnmrJh8lueEWzZG8ysKYRYt6eScHgpoqW0g15aMwzboCoAKXN1a0JSO28/DuDVun1/qCO9/CV2TaSAasFbdYAnPkMGB0o2aJ11cI3eV/JSXkbMaATfZpCqyZx6WtHJVLaYr8nIg9FMqlzAPJ8/8Ona8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734597954; c=relaxed/simple;
	bh=m6qdEnlA1UYp6IIO3WVFNWGWiRfmx4aGtonOZjp9VC0=;
	h=To:Subject:From:Message-Id:Date; b=jP5vUmmn7oj/STNvt8CvzCCpSxR0E2LMX0RP96qJiDMmSdF4yxj3ziwqVNkG1rv4YRU9RX8C1pM4QOBpkrMMhmGzopj4mYia/fpstmunwGjPM0DRYHq4S/9eJshagfCSzVVZAiNBYHT9FS1G6bndF3oaDZ9LqWVwlkeyGUP/RXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlXnSuL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlXnSuL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A404DC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734597953;
	bh=m6qdEnlA1UYp6IIO3WVFNWGWiRfmx4aGtonOZjp9VC0=;
	h=To:Subject:From:Date:From;
	b=XlXnSuL7GHJB+puyO+q2+hfr0x9zHfAn8eOAFfl0gsp4jW3zhnO8za3UjMVBLQACT
	 yTOQH+iUAdkmz4IDvj5tH/+zOvsWfCZTIfkID0zJP2bVkMybR8p+bwyC9x+vFlrjAh
	 rOpCE5RzcBUobfHr0pmZrIy0oUwRZHcJEuS3zikav+QD2aSomvo4fbJSkci5BFMTw5
	 JgfeCyjFW7Pb8Rqk5wed7GW/7s56R3/rM+mTsJqrYLRhaTstTp1quk/cyDmxtw4KNy
	 YjJLP7be+yyxcXXvJCHKG7gEAayFq3Q4/v6w0CA7hgzhMtyZ3C7w8CTTh7YT9hpozY
	 4efkhnR+En6WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF57E7718B
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173459795357.11515.9280729103476215738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c974b7de4d4e2a82dbd682c6a968ae7e9252d7e2fd090be4703728d15bb2d4
Date: Thu, 19 Dec 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734597953
