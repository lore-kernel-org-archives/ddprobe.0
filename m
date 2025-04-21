Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42290255254
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745228394; cv=none; b=jNKV49klUpLy2uOZGXQKYZ3enggMhSp+mET7ONp1HI45RG/wDkGJkJDo57Vo7M0+5I603kvTitSUkH+TPAY7oKwEHQ4mwPzleL4j2UGDCQVD0Lc5VVXBCCVSb6xXZbNSf6p+7+BFAbw3Lvqp4kHRWjYx9D7IYSSaSZSUu3n7TmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745228394; c=relaxed/simple;
	bh=XEgHF8FG3PF6628nf/bGMwGLVsuB5HzL3ddcpfAI+Uc=;
	h=To:Subject:From:Message-Id:Date; b=O6RjxkEvcl3eu0dEFbIoy8qhDv8DTuPe2AAqUJoY2tlqrqDs/01fUp+MCprOw6B2DBxlhuFgy9jvrqgX7hf+Pw1ejtgFE0B61rIqK5RcRnteRVgmmzVhkGrAkVUJvtHaMAJUF86wuWxq9288dE3mcBYj+SNIY78wfA1zf+6OT8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXjuBUu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXjuBUu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE07C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745228393;
	bh=XEgHF8FG3PF6628nf/bGMwGLVsuB5HzL3ddcpfAI+Uc=;
	h=To:Subject:From:Date:From;
	b=jXjuBUu7i7qOowG7ZEGUVaQSF/5zLNcoyIzIpCr2D9ifBVldx1+MfF5uOj1guBQSE
	 6MvGx58l5++dvpCeqzfDQw425BygImUGyQXjOSRGLl1AfXB6KmPC3lq17ppZRuzGlc
	 uhJjPYp/dxaDB/O2xaqESDLjAHo0pB5+siAHsL4tRM+fo2okQClbwvZcmohlwbeMY/
	 HejBfd6Qkp1vWmPsLCcXZ7wZA4cOOm5AYd32SErXri/ldt6rR/bkZ3GnGJBhWO6XVc
	 zNqoFn36C1JD5xdkFD3IlUUcQhYqWohnc98k3BInbKf3tY7Io5auxQ/5IqQumT15IQ
	 D5oDHOp5jj0Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F8CC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522839361.16994.11356745664800140415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141b60884e0553615448d2a0445c197046ad3aa21ea19da1285419bce7d33d79
Date: Mon, 21 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745228393
