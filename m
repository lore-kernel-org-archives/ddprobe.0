Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245F17A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656470812;
	h=To:Subject:From:Message-Id:Date;
	bh=kUQ/JuivYbuhfrFzjR044cYZzWOxX7rv95S358e4w3o=;
	b=IMFgUaoPbM2jA7Ot+FKzXUZhXnbmFUt0tS1FtOjp20Q6to1XgiZQ1meQVpCpXJwP
	pzl3FmvnjZ8VjXf3Hh5E8EqLKhPkCpOCWIA1pe8r31m2k9MLxpT4veSEdRgJPI5MGTH
	WhrD/c9GAepWpGSGNav5SIVgL2lWFQqtMrRhGOeU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656470812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kUQ/JuivYbuhfrFzjR044cYZzWOxX7rv95S358e4w3o=;
	b=k45DX3WJYJfwiWN/Ejqs8Xg8f35V8uDoP55uukT7TFpHQ8vXfCGzbz6n8UHUljBC
	A+gzptZrXzoMQLoZyDHXtXjMF/cjFKWia9XuHxMNKLHboKM5SljS0cPJTpxPwYON/5J
	+AV70fZJ/7pB7hzWS20BKJOP0NP68CYoxRri+TxE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad5ab684-ce102f86-6223-41a8-a816-fe134f48b8de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27b1d702180720ff4f9c699d29d0df72616dbfe242c0c6ec68417eba83a6965e
Date: Wed, 29 Jun 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656470812
