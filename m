Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4DE2C3253
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748990994; cv=none; b=K11LW7K65ePHlNaWyVoSEex8lcXp0sYILs7FssmBF0uaBvsO8pjB9YgqCesLwyMnhXysR3wVmHd5hlpXZHFMxVfM8Cf2COelGqD1mOMrJjH5ZfUJ/sGX4ZUHXwcHgI9w0YDfu/KKUXwgCagEMQ5YyE5zJzFpLgD542CA+hIwd5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748990994; c=relaxed/simple;
	bh=hQmiaFl9nwFS2p/QpN6K590VE1r7oP8/C0X0RIAPjnY=;
	h=To:Subject:From:Message-Id:Date; b=MeM04sKHrJIRFja0wRYfFBfNzJMHxAyus0t5TxvR5Q+PeN13py1woJ3B07q2YYav2pcNzlmkkee7wPWyVvokI2chDsdq7QtxWp8h/CBl7DbuOF10O7UZzuyi40Tf4PIcD5hbVhO/B4Zs/RzKZ8/Gqd7WfrafD4ZJQuoWmQ3ZceA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP+rd+DF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP+rd+DF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5965C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748990993;
	bh=hQmiaFl9nwFS2p/QpN6K590VE1r7oP8/C0X0RIAPjnY=;
	h=To:Subject:From:Date:From;
	b=CP+rd+DFl3Oo1tSxQI33RvBnHrnYgHfj5YrdhRpYNRksdBUZb9OeRHjfBaRx5mrzR
	 eAKv5mVDQ1s1MwqGlmlsxy7hDkcrWym3QMN4Hy90jhuygXLyj82Idv5qrrDqQoisQT
	 LdQmTLlRMiR1LPYMLx44Y+FGBUWTGxjek5QR39oNVN0C/o0FRv4Cb3SqoLvtECBlo1
	 AI/A0NRnEwLEjDu/gbnwMIRsfSMQK+Wyv4fIKIg9xOXReOFb269tuTPxwC8misxmD8
	 /463VhZw+0eOWxIH+9wdyfePRX6fQqMr48WF3s4vxAirvqPoBMXcXSTosuU65wpv+T
	 q+mlTLzSKxl+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96756C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899099358.27885.17181321980742799483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc10df69900ec4beae953e2a07a13fd9be86957a7d9c5a4a0cc1eadfbbb3ec9
Date: Tue, 03 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748990993
