Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE117B
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645608984;
	h=To:Subject:From:Message-Id:Date;
	bh=vsFssZkrq+jOI03tpXp/SlnnxO8dxGAZjccraeFjms0=;
	b=c/UuvL3FlVn5L0BYdkQUTwUMQxYOz/M6KzgUY5YpmLEsYXZAUiiT6mJo7SvdhTgI
	nfgZaqo7fVpTq9KztuaxBTi9RHT7vORG0j1BnNvKFPVVkFrBazGOi68D/vxwN4XUHyF
	0mkkc36PCnQEQJzGxAc8iedUZcu9GIDAjTBL5uGQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645608984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vsFssZkrq+jOI03tpXp/SlnnxO8dxGAZjccraeFjms0=;
	b=aps5Bvy2msQsM/k0I9M2edR+IJJgImC0NyaARb1CgVDEbL0LOzcLg2Mpx2FeNiVa
	1E7MQqkioLoxlxQXUwzMiHquLELsd8BUNUgfR6TUuOwFbYaKh8GIXEL5NrNI6yq61w1
	0PW1yZCnuWnfnYA52dLezkhGFfLIMJtAJY4dyjJE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25f060ca-76f98622-922d-4429-8951-488e5c1e7cd6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab53e6a1ebcf1e421298b4a27fd5417c7696e14e362a235a563ee9e811de5e6a
Date: Wed, 23 Feb 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645608984
