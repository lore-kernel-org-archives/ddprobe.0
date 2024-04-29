Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F1A12B73
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714417943; cv=none; b=dBK77+V9debzS9nH25bH69PqSIczB3wo6Zf7ccIPJseoJn2O8okRuQKnyKS5nZB4wqXrV1NcQOp3Lz3Rm0ZYwvfz0NqpIMnVRqyBm9VbNlOSX1NtjbSljNKtcJRCf8vG6/QwZr5fxqrRiSuyrlp4f86/LLhJwPzaRo1GfTPbbp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714417943; c=relaxed/simple;
	bh=9XNCWRbInCOohIo327ZZpLPA1vcc+XxCF8jFCltOAOQ=;
	h=To:Subject:From:Message-Id:Date; b=O6EB8pkGKmKDbBxfs9q5SqBuRa/bbAUKRNNyIo15FJys1gMuJIRJtxh9kUjE49QGNM0gWm8H1SzjWJhc8w486dPgImoj4UOICzxruZfyYwM9jYY9/KuZ401jtdEe9F1EKK3UvZCRq5ka8oBFKdoKzTjmUswZZm0FBwAZL0V7Im8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJQPBp2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJQPBp2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF059C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714417942;
	bh=9XNCWRbInCOohIo327ZZpLPA1vcc+XxCF8jFCltOAOQ=;
	h=To:Subject:From:Date:From;
	b=vJQPBp2AtWf5bi8OO75ITqYReOr2/tMZE12ebvhP8+2eaLaJzlfZS/EU7PWXm6WP6
	 QQS9FhddZXNKNb/GyfgnT6l87jK9nzkreQnTvr/YWkjfF6gqqGnJHCnAH97UY29b9V
	 X7FAKFNM27n5yNPA3YdWJAdjg09UV9NPN1gs+hYaY7qM9z3kFE1hr8a2Lj4KvQ3XzH
	 fT0eFuyMWV+OLjH8lOk/gDS/YXnltkFss7KDuY8U+eY2KCvMlDq8xv6p0KCQHSw/3y
	 MGYjy+gJiTsa1McOEomspyZZxa3l9yccPh2B6Z+FSEK3iJ9U/ZE6J4lJyx58cTm8xB
	 iTeNq2MO9K7CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAF9C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171441794276.6578.17026961342028767323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b58b7d380d148807ff88c6c09bd1851ffd27ca4101a870ea9cd4c6442fc06d23
Date: Mon, 29 Apr 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714417942
