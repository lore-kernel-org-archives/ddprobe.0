Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0361849
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 02:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656727612;
	h=To:Subject:From:Message-Id:Date;
	bh=baVe0UAoWXygVV/hNcubtH8PHoq4amIwLjuTRRAGq/M=;
	b=ha89ouKk555GwudQl2bi0B2DQDSjKcreaOwcLDiWT7iW81IN+Hg9dBAXGOXj90Xh
	ThhomDKIr7zMmLNpMroFfHyYEuUXuERBDhnF3Qb3YwV/SmEmECPBY6yQsH0g4XlwZ10
	pCzkU+FqH8BzIFaqoSDyCfB5TValVqyTPQ0gvVfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656727612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=baVe0UAoWXygVV/hNcubtH8PHoq4amIwLjuTRRAGq/M=;
	b=C6ZK5kF0rf0wFdptX4va23DtkGnJmt71Smf/xqAy3kuPmXQFGJjoCO05+zdMsjFa
	/H5cSbmPjmggUJ4Icp0dIKp6h/BCRZ48xkW8plnzZhNbM1AaMZ3IjB/jJJdy1FMyNNN
	IWkSByZcvAG8p+lZaV6QcoPgcvAjWBe4JZMyH7SA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bca92bb0-bd72fe95-c940-47a7-ac20-1265277c9693-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e42fadfd850a0a36c6188797bbc948a9bb7a47417608ad55b2db72aadd8a34c1
Date: Sat, 2 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656727612
