Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E371B290D
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645025185;
	h=To:Subject:From:Message-Id:Date;
	bh=I5f2YhYSevk9+W60ixstsoCMaFKe1gQzCqz1JU/LvnI=;
	b=LgRiPp0p734KRPjAI14POpVvyAvGeKOZ8If+s7MrggviCdrLeJCoXu3EBMKjoEVA
	a1o4OkojzvCQOFGuTxNuiSbrbf6CKLpJYB5fh+CTiT5gRCPYXdbNiKPM2t9IMzJnywF
	r/hi2wdseDo+662ED5uPZ8NpeEJtdZdzmpATITMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645025185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I5f2YhYSevk9+W60ixstsoCMaFKe1gQzCqz1JU/LvnI=;
	b=L2ZPUxl0so2FRA7Oj0DO6vX4P5T3O7QG7qAxha8rZQrl2+COQ5SpdzKkhqzR4e3o
	wTl67Ybq5QBTGlc5qQ8MGoifgP7BgPjp08shRZjFl51xWofGGTYFeL+/cs4GiQcK8yK
	0XnuIpn9xqSpB8vQLwg+6ZOV/VLA85Rz4JMfUmuA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f03244c1a-b575ffda-6a26-41ba-bedb-5561c2437b36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1104fbc0067f1553655f2716b6b537a488fcefcac5ecb84d96d2e1760985ab89
Date: Wed, 16 Feb 2022 15:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645025184
