Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0FF1323B
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB47C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661437252;
	bh=GcXLxAF+3CUROLdzYfhB0OybbSUIPYkog9ffeMZh7/8=;
	h=To:Subject:From:Date:From;
	b=m/UmFK1+lJ92aXn2Fez1xRQVmUUU/MeWTYjOgLm6oaSFB6mnfWVZAidS3fmT/Nal0
	 mSmPNIN4czKYOJ00593VrVTHx75h1i/7xZzRTVd4IBD34V3229jT0uvteCw7yOnzi0
	 +AUbA3YeNso1Y4kLHY8GUYeFue3Gffq+kHaWyP13LA6vg9edaOBLBz8bu3nr5G5bee
	 R2DH3xSfoHy5YFteryOBRdC/4Tv2rDM2BePzMW8OImACQ42CGId0sKRP5bZOxx5Bik
	 JayPLinQZANHaJTvS+XjOxC6NaVfqGO4W94ZwraaMD090GMgi4FKyr12vqGcZmB2yr
	 bY33MI8HyKZ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567BEC64990
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166143725234.4298.8091406946080113425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 991b28abc89b4b02d33cf96abd88320b64df42446966abb06cb5be7f1c8092b4
Date: Thu, 25 Aug 2022 14:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661437252
