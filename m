Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442535672
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 01:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717896443; cv=none; b=GpFXLOUzvDnd5zKP8+Eah+Vg+qoVL3z2q9S11vlTmel1llZduAgLqMca/wF5amxZYQuinjZZT7Gw62VfemG9BDu4GsKjh1LePDuiIBfHqa2+PZqCBoXmN5uTPqh8mzbtPlP9VZTSe+WvJ5ah6GdkBcZOFiUZzS5FST5Z3qUH4LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717896443; c=relaxed/simple;
	bh=HZGd4pU2dil0EMYPiGQAgMJKrQxgETmzBimoNvKMOIg=;
	h=To:Subject:From:Message-Id:Date; b=aLR7rptF0c9jmksiqiMIavxHfg/0VWPwA1qLLavDn4D5Cfw2vxIoSnsx2I5GZdgxr1mHLuEonLfyusJA44RgCzzJ8uTvjDvwzWA18XWpKEVHBgsC0n9IpQz0oavaqwr1QAYsRiQuskvZHtT7JCggw3flJGZ3kIL3LJaBt0mVKJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/8cv7r0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/8cv7r0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62B5C2BD11
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 01:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717896442;
	bh=HZGd4pU2dil0EMYPiGQAgMJKrQxgETmzBimoNvKMOIg=;
	h=To:Subject:From:Date:From;
	b=M/8cv7r01UBHxgLUNKszo/vSLxkF5+RGFSm+1cGW/9hbQ9/ZpRoDgRR8jHNepQVdS
	 eREcdrtNp0LdqFpYL3xSvzDN6v6IeSzAMAaoDc9IzNLfn9Fv4eibtr5gZCFvGKFDb5
	 gIfTFHeygih6yfJS5KZMAwYf2f8TZhVmIKy1lWEo/85UD2lVRJdB7JU6FyLTm8HMmR
	 QYGRhniju2DOwk+W8uNyfz/vbE6NfGf+bOQDAhbnOtRz36sA3xOFNr3aO/5YyCeg5H
	 BVWHPfSSKx6rZlR6Wu/p5GL8HCQny8m75kLtWDMUZAFjaQRm5GKD6Q4ZwqBfW58Wx5
	 d0z0yrLmRZK1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF68CC25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 01:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171789644276.5270.18201436864718962437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d494e14982beed426d9b72ae2f90fe45db53377561f2951cf0afdf9aa08db475
Date: Sun, 09 Jun 2024 01:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717896442
