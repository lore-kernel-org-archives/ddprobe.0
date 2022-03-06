Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27587E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646601084;
	h=To:Subject:From:Message-Id:Date;
	bh=cAE4qO7CR/9+Ud2jAf9Iew392NnWRPgcftymcK6VTu4=;
	b=NvgLvjMHIv8l3i4gAdgDH1SbccXy0iINkMy+XO6AnQDWwjCsUGPfytPMz+tvdihf
	YYTQi7gAuWi+EywvNPmsuYtbr5/dCbTZaAc0pCo3uXCZuZJ0FtzSLDLCU+3/uCm3d+X
	6PuMxNevqFo6BMsYp4w4ji7YF6E9wJdYFN2dKkXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646601084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cAE4qO7CR/9+Ud2jAf9Iew392NnWRPgcftymcK6VTu4=;
	b=GFpG0UPEDvYpUW5pwczuzwPo45ypad28gGuYkRc/xu2/KeJsT4Ylv2hPc6XRDDNi
	oYMB1FWRV1D4yl1g3XHIy1wlXrBYExiOSfVMekV5EU45Q6M3ZzyVn2qL5v5jcrurbzF
	8WTAKnCLnJQi9EqpQ/4eVDgIg5yrus7+LcWniS+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f61129f60-30148bb3-790a-4dc7-ad35-a7b3d2a2f7fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b32b9d7350f0c9ad79d9cbb465b1bfd4616cb43bd57757bc120b1f0d4e5343b9
Date: Sun, 6 Mar 2022 21:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646601084
