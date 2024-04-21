Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69ED679F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713671423; cv=none; b=U9mZtfgm5g5cZ5qpYgMBHr3t12sS/Zf0NASesJSZ3JzMwQWg1yDOzz1xj8ohyfZDT1sNSKKMAnXwEVs39wdXVojvcEG0XxG0hHuZ96RrGS+q3o/Fk5j6SWOPZcM+UL1MKH7IyP6BGaFm4ZhIGir6n/zWckNg5+l2swQtlvR2N4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713671423; c=relaxed/simple;
	bh=d+N/akR32Xjuj11UlZmy7VVqizXrRwKeiIXN9Hs9Sw4=;
	h=To:Subject:From:Message-Id:Date; b=X0RppAUAaG5b9iZvkgLqPvgXkVFABcqAaZ5YsNSmz9e5kYWUkbi6A5dCqKEuWTpV3iREBLuG3FgSogFrcYAGevJovuIG7+aubNnhhHys8bTdrIzVbzypEuiPOmearlFYe0LcSUEwAZ7FI4pDwq8EDsD9iwhiWAYO4m8vmrV0oL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJ8GdI4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJ8GdI4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A2FC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713671422;
	bh=d+N/akR32Xjuj11UlZmy7VVqizXrRwKeiIXN9Hs9Sw4=;
	h=To:Subject:From:Date:From;
	b=CJ8GdI4ZQpXlxPmiJFaZ8llG1xP2ZS1Ff/HfscQ45TuCO+NXu6P7MT2Uxi57eLnZz
	 IklXmIN2K1ET0pEPAVqyPSSNf0/0WAeZLOfYFoFFsblbAIyOrG9rSWAwmMJ4Xn4hFG
	 BIYS+IZxWJ4a5W4O7W0lWg0y+QYeLAnW6QPQDziChrgbPupVaZ7K923sdOJnRhRcam
	 NXVnJWNi8ZhjvLUR9yzrsg+63loBkDB4uNZ1YaZp/zSB+WER/8Fq4rEk9h5o3iWa/8
	 Rd20rH6Q5oThjbNwH+2f6NBNxvHaQEBhdF1/6pZD7pSvwvZWSvtefNfba0Ob9eP82A
	 LLDQZ5tkok0zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE52C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171367142275.2298.5647218907266450087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5445513a28ddaf20c562d883bc0a86107707db944347bf232372c76790e46c0
Date: Sun, 21 Apr 2024 03:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713671422
