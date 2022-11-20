Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DE33D9C
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ACFAC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668982254;
	bh=4zOZJklSf9RCt2nVRZ7cbWcCKyhjMqdTQCWD8Gfecrk=;
	h=To:Subject:From:Date:From;
	b=o3FJF6gqBuZgZzAUrlRSw/haVb0KDUKkuuYDxAnog6TSrhZqk4hU/MYxDASx+E/D4
	 7UDTUS/ncKSPtsJ72S7U1kpT6yiTQnyMg/W1CUR1C/WyPcCdnAvYdkiU5482ihajVc
	 froo8QhAjEOAcKVn0ptTLEoZN+Ikoi03cKkzmuE+SAy4U7Br2N/OH4mL2tGbzI75dB
	 4rcIgjutaX+cZfHa1jzHDK5ZwfbBr8+kCxf6NO2h5sdwRA6FWB7K7ceo1xRvNPCZJH
	 H70Tj1zKGnSL+deQKHWE8zl/5PWqObIp8szD3+9/1WDs0hnXeD03LhFni3f4byzNel
	 YZZVSTQY4T42Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CF3C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166898225439.5421.13838666108709399319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103d973bb5ec1e63db15850777e87f9ebea2aba725a6c157e391ee0454e5b1b0
Date: Sun, 20 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668982254
