Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B5C23DE
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740872934; cv=none; b=rM+afHWm75Dnsr/bfA9dd28ClGs/VK5lOSOPPAqaE+Om2JFD51bxcTZsCYc4gAC3bG0U/R/AFdxYFqUbyO7uuz4MQPjCiwjdKyy7RxUDX20TMzpV5twm3X+8ktlAtSI7FAGjm81i2N7Pf1WDRR9vDlxyVe0sBjeOB0GPwMtIpgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740872934; c=relaxed/simple;
	bh=Yc9PFylYbS6grWLIw3NTiV5+Vd+oOtBD71DizvILP6U=;
	h=To:Subject:From:Message-Id:Date; b=LB04VEPVI1oH0qXm5JUWUN3W6yJGxTKGcRpRX28NfGw2CJhg3plLgcwn3sM61YzEBOuU87op0K5Kn60yhUJOWYk714QRbroQJCRvXfxjoDSf9pBXyo+fHyj5+70pBtWPC1aKboY9aE3+DGyn9LFZJ0DQBvjpbo3MfP7qJ8KXvG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmcIS6dA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmcIS6dA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA3CC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740872933;
	bh=Yc9PFylYbS6grWLIw3NTiV5+Vd+oOtBD71DizvILP6U=;
	h=To:Subject:From:Date:From;
	b=UmcIS6dAS7DSkHlInfVG6TDCpOTX+gN0Nyt74PvKesA4qiXLvlmwUis2lmPWkpZeV
	 slRoFC7gxCllspQ5SgenxcDpjdYDmm1Atv3dd2Z0UDm3lc5l50M7XbPSo7j9SiousM
	 RCL0RvrbkpzRmps/2eCkr5zLd2q++t7uslgd/ThZ5+Mo4vR0LQ23f7Ru/5pZAC7m2N
	 MO+KbXBn8yMY/fNo2omGghhZv/4IjSNDEziKa69O+nVS8khK9u6jgCnS1pLf2O4KTn
	 60sww9owZ1jWJI8cnp7EZiBg+FRjRF+Q8iy3RkkGYVr7+xwCR071i9s+9M5uYnSQ18
	 TPfSrtqKdnvrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9905FC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174087293359.23308.17363219550760930366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99467f2e4fd0c89ea487de7759471f670b9e026305817e2bc25af1bccebdd39
Date: Sat, 01 Mar 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740872933
