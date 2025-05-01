Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C931E7C18
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746100794; cv=none; b=GAGXDxqsGwK8IevoistXE3bbBx+cspX7uR0epqieEmOt6ezMPY+B7TnNWF+mo5uURd4GU+uyMGvniWm1tjVLYkzpfPQ9J25i/hZXH77fqO1LlwEGOnF9UJ1UQnLnQfhn7Mv6k0/1u8M6fOlh1fkRtpUL4EX3XM/BL5Wuy+J7Uig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746100794; c=relaxed/simple;
	bh=c7y4JfmVs/imnQBcB3o/yzH01TasS9xy0E4NwF70Jno=;
	h=To:Subject:From:Message-Id:Date; b=O1Qpygsp2SbVP/s0KpFiz79FYYU9eD6UHOB8Xluvr3nqJFXbiMSY26fOoJmUvc6tK2FqNDGYZVqsyJVBijec/B2BgrxK7p8/SuWazm1+UTpaU7kWRN8tB3EudRAmbajPIJpzdGI1R8vDw6FcUOAEJ/mo2a+oyrQTMPiR3FUuM5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1lWmFLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1lWmFLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D27EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746100793;
	bh=c7y4JfmVs/imnQBcB3o/yzH01TasS9xy0E4NwF70Jno=;
	h=To:Subject:From:Date:From;
	b=n1lWmFLAyUnB2uY75mHNttxevI6NtHlalwmEA4tA1H74s+zg3+Uib5AjyCbVeOWwM
	 jpXvTg1R+bnMFVn3i/DpzeYCdHvXBStNno/x81VVRcPkoWr1jH4uUmE/put0sKxZY5
	 +PwYQF0sqq8CA8ycY+8lLjXAoNDbFqRvH9vXB6XUHHg5FaEwVIsVLk8mNGOxkgj/CA
	 SroI5lQRZeR+rd60zRuxH85JKuMjwu4DjqGvZ+QFFG1BqRDtrNHF+WfHufs9VlmKTV
	 H+ESaWWOF5fPzI7ZSCf5ZOqLtIGEuibDYk3ijPEXmWElRUvzKVsU/jkrw3A8mlV02a
	 hoVHEzKwjK+vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2EFC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610079357.25754.18288163303553748236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fa577e6020191cf6a17493cb27cf924fcf145ad1ecb52d2dbe34129185e6e8
Date: Thu, 01 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746100793
