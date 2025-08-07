Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC8679EA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754534993; cv=none; b=Qf4qC/YGLLxRdCuxYBQs0J7/cbbmNz8XxO021tnxENPPr8HmHZeGxhmC+5Yf6uAXP4MrvpfXtNTPvwgX+KxcCpW+4fGOflWLT74PmJ6Pd+LPqEz2yC1My/5r2Ba/blgckuR3aNms17OR41azbB/Cl8p7Aaf+r9zsaRgR+ujQdXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754534993; c=relaxed/simple;
	bh=4zW7CKp+2msQKdY2YD30CuUquhA1/wxQX/+PQTb4y0w=;
	h=To:Subject:From:Message-Id:Date; b=Q/eI5izLudseT5xoAHqQdWlu7Gd0DQNNBJHf9XSpOe39xRlYB1qmYRJ5+mjIFc0O7NrhuUpr/RlnQDZ8an6WKyX8fDEX8TPbtJIf8ssuANW0EUxJ9aKBDl4EE7prgLRFqXFKR2UPjgJYDViLWmGWY0SUXfrRAV+Ken5t+iV0lfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4ij4qnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4ij4qnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36FDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754534993;
	bh=4zW7CKp+2msQKdY2YD30CuUquhA1/wxQX/+PQTb4y0w=;
	h=To:Subject:From:Date:From;
	b=M4ij4qnwc6oLkVPUQxLMEOL9cwIvk4w70k8XM3uLxF+hx9zOtAbjfFLxRAg1uN6iX
	 AzFVVK8L8weux4MZyH2SbIpBC8KHkLuRfSgvSKa5FQLLFayL41MWIJ4gz6DYKZRfMv
	 XP83CWt0q/UlFfqbpD5o7UM9ROQBjc4h91RI/HlUcrqufC1mRXakic7FNw9nWhav5y
	 F4rtWkEANF3gjyJEVNgl90+l5ljsRB7TBvi01Qf5jiAhuOJyalcoKIYxkTyeADu7XS
	 knxMnso+Awq8Lajrl2y2Np1tuqFtHHatoEqxkaMkRX4+97/aV4OS/HBBImxzNxoh+n
	 rXko8iYpIdEmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F01DC87FD3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453499357.25006.8722035194751356401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767b9f03e695166dd3e20caac9df6a190cf552aad277ebd16240b69697655f06
Date: Thu, 07 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754534993
