Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1C32DFA4F
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744898994; cv=none; b=oXjAZNrf9ZuPiBzKOTKyA+oHR6ubvzbbN1C8exOY3Z/j55PB2MZvsu5M6RqVt83RibsEIiP7fO6CN6aA8wuy7LjVqoihnTJ81d55sRD3nLsG6Mk2gicQ4cBqrxFLKnq/Pvc9IfjcnwS17KmdHHwZ1QREq/WZgTNSqoV5bwM8Y4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744898994; c=relaxed/simple;
	bh=W2RnximfkxtmbTBfwLGmub2MgB9hCPOciKhAnIJYBTU=;
	h=To:Subject:From:Message-Id:Date; b=eWzQaixZ29GlLtHyJyuNV4t16cN6CWXsI/Zayqoh4SKwdt4tcy9EZmxcO1auus2YS7O12symiioOtyvsZIlKFrPtd+pK9zKPrWU1Ym6H1CO7yk7wpOsdPCtfyX7WK5ia5a6PZ0U8vj3IwH9IizY/B/+en2ix991kzQUpiu6yOco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqTCYk92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqTCYk92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA548C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744898993;
	bh=W2RnximfkxtmbTBfwLGmub2MgB9hCPOciKhAnIJYBTU=;
	h=To:Subject:From:Date:From;
	b=LqTCYk92EsuLT/IYXp0xauKyzZuZcTfqwipYJNDzJpk4F1mXW4DTkdV4Qk+uRaptB
	 3mUgTcnCkRb1Qmf6xFrz99CK0BZ3eS6kLgOFFCzpUMUQqsxaoP1xqnOOQwKWY1CH8Z
	 NhXFp/l7fCunh1/xcu1GY4cFCNdYUeqj4iwGNkVNzOm0vYgOK0vqEIiAlP+dnAaEQ6
	 wBD2CgY/5/ZC+0EAEufig8uv2nuI6YOgp6IWpvx7YJrSnidYEtNX/gPfTpc53lf7mA
	 lhhImYUtgM5gTg+dW/V/9Rgcxcvxyx5UMDmc4lgwL9/zVaFtn1Ftnbl0AuKTubALMV
	 x2ePySXR08AFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5FBC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489899361.24053.16820452115129580927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18def619f98d7f775428692474e4e47b3f07f99dbf01502b26ba80231a275c8
Date: Thu, 17 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744898993
