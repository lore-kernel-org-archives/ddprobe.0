Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F386102
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B7CC433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666375253;
	bh=WX5WhtMbwRllvHu0tGc1ne6sypJd+Gz74n4iVAirAD0=;
	h=To:Subject:From:Date:From;
	b=eLaJpym5EUbpIjjmigwDCUuS3v6buBTt+60tRgAMnSgDaC9es6wxsFowWzi4er9y9
	 7QZ4M/xpmMzVnOHq9eqEmwWonCmpg+Wvwtn86fi8shhwqWNUv2BhykOc2ETXm4s9q3
	 7Peww3B2gd8IXGbDx8vwIp1FafdnisJ/8ie97+pDUUNePnN/+FpKvvjkctoGjAmErG
	 Em5fGhbpcoTCplYdEcxY0mV5PwDknEEnRfEzSEfpLqeP/Eq6cKuM+iSOlPU+G9g6Az
	 r2W2owjT95tqF3VgJHozFK4yKRPstXR0b5dqv4iybks0/9k4rGX2RmkwpQdfClZd2X
	 l+BldZ7/jR/PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5581DC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166637525334.29977.15550001423881724757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40692651c466e4dc1bef2496a1a7f5b6ef114acbf335a48f1eded974bac619d
Date: Fri, 21 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666375253
