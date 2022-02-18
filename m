Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889583211
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645191985;
	h=To:Subject:From:Message-Id:Date;
	bh=EHdVUAFuGY/zhuGAkHGHbNyCX7zgiBsJLpZU8XLJGyk=;
	b=WHWxtrZh8rLOfQQkluHhE5qr2pQxODoq/C7krfIj/HbSwh5DAggSIiLnFMX3OP69
	EtV4b5o/K10rsD3OWWrOpr0pPPOY1aEQlfViJ2HuinRQ9a8o/gR0cIO93k9Imax2eT2
	sE87lCh9d7QbOX8K4nX5QpQd/TzoI2v2jKuBl6O0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645191985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EHdVUAFuGY/zhuGAkHGHbNyCX7zgiBsJLpZU8XLJGyk=;
	b=dCi+3jgg1VD4kmZpTqhX7Lh4tInL3pwRKOFCJd1Q7iEllCChFNkxiGOOcHqdmiUu
	biS77N71OtAthV0ECqtVKBFDrjSH7IhXHOehnEVMX5p71b+5lqcQ3jhVP6dZTeidfpj
	tOyobJb8kY2wG+tzOHBEBCKW82l0p/B9K9b/5pUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d1576b5-530f6b4d-d525-4595-8644-cb32e20cd940-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52771b8c022a9bf2ace2fdca5ce2babea68e039802b8783630d4c799a6ce9440
Date: Fri, 18 Feb 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645191984
