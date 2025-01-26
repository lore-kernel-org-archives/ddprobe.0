Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF7125A620
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737888355; cv=none; b=f0mmApGCtspE9ZcVvVy1yzDfnHzRGDu7SBZ+WX9xHndeInqlY778ijT8EKpcdtHIPX9FJTGHcYx5gJcbfFIUOr0tWRJKqhzaEGAoAw4gjrBxovGaIWmyuOnsWks198LvbEaobKXYWILul23J9UtyW4YczeNXSt2Ib5DQZuMQ3KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737888355; c=relaxed/simple;
	bh=JKo3c2VVH/POM+RqaggQftzOIDA+koNvXJKT8vr9bBw=;
	h=To:Subject:From:Message-Id:Date; b=Elw32Q5dckpXzq0WELREdMNtoBE2mAH4xyNt8rvvr91M2amTfbM+iJjz5jIgMDkOeCA8h02Iboosu4RdforhKQLvhuWfZxVcEUONa7nrynCC64Gxm/n0pVA5DoSgAHb6XsDfRnKjjEMfVWMqCR6b+rGDxscOoRCc9jCIA2tjD5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgK+KmiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgK+KmiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5884C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737888353;
	bh=JKo3c2VVH/POM+RqaggQftzOIDA+koNvXJKT8vr9bBw=;
	h=To:Subject:From:Date:From;
	b=bgK+KmiW2kTMWZ9ZCoxmYu86ePN0j+KbNcyoRFkgleUje5ADUFqsmfDdK1Qyv6CYg
	 deRMHH2N1HXksd+p5KdpuIWOqrw+dF/KBhe6jf3u0nLu/shBOBqxaQqaYZsrvvM0gJ
	 yRbLlf9gl1/Au2QV/9w6gAwHhBf5M3ky0/+9NoMW1fEuyYeEZehEMqZffKXxeWNmH6
	 7LSV0hdJBMIi1oXa1L76v3xgjarOmaI5PEy5mVyj4IndkQX/JE/pCID1IilgyuQcOw
	 43U1Q6gIubjTlzCmj3RuK7ft5dZ4VBdAZWWq2cgnfWPqMGilcNv/k/j2vLfj4oqlI8
	 3PayN8k4kz97A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AACC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173788835359.22862.6479809601406368187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56fffce48e40b878652aee01d06162048b86b6446734d9aab65297ace5331f60
Date: Sun, 26 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737888353
