Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF84948D0
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646744185;
	h=To:Subject:From:Message-Id:Date;
	bh=9LMlAjcqSLdj2ka2vdsRQtgduspNOcW6n35Er/uYOwE=;
	b=FBrxdQTqpAk7SSHsRlu4juUJHcmqtGYfBz+IL08kkFwtUrQzBSF5ExdNUEY6QdOV
	TG14KVUqgaAj7ASIKAqy2WjqFvN2K9xkn4wAYhPgfMuUFEBAOAgP7nlb3aS+NgDBHvH
	i7P/61lePHEqJ1UZqbQmZ8GPngpwl1DbhPIn5AjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646744185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9LMlAjcqSLdj2ka2vdsRQtgduspNOcW6n35Er/uYOwE=;
	b=YM4H2w25cJsuAZ0DTVFCOkxZQodAto3S4vwQatTwPf/6R4Eo44Ba6EVtexstTktW
	nNCwcl4H8jsTRiKVd6LXW96LKO9YKNAIKJUGF174UiBT0SHLEiu7Dz8pv8GvOOH+Dv2
	mvNA/5OhWjceQoCu7w8rbFUq/YqoPDu+6YmH8eCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f699a27ae-868c81f5-fceb-40c8-acf3-de927c4085c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57d77bf308e564971a61a150ee38fbdb361b4f9a78152f4a77fed89147088cab
Date: Tue, 8 Mar 2022 12:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646744184
