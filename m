Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7CE4690
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 02:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648173778;
	h=To:Subject:From:Message-Id:Date;
	bh=9NixLJYabfvn8KVPi/3JwmULbaMA45yWHRLGbRagVkE=;
	b=b2nmdGmIRVdDIY88FTuqC2R+JhXgZiBPVBup1mYuFUgBLcUChgxL1/Xt8iDBiaUJ
	/9e/lzylrU1+G6ObAc5KClqQrMDQnLIsVQ5qb2llTauNp90g/b9oXeRKeteWrGtGAKn
	/5XLvKP4qqW8c/msncQZ4WPTTyvOCkKdTxv7+PvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648173778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9NixLJYabfvn8KVPi/3JwmULbaMA45yWHRLGbRagVkE=;
	b=jjZBecu1PLJKOcWN+i+l8tGvTYsBmIToIe4STekNKwIkWin78WKrJDw37u6W02Ad
	TMyqQEo5iYdCamlq41V5vIdLc8rKkmzlsoiQPjySHNAf0URl+S+L2mlvNVNVo+7JjAA
	Slo2P+meuAJp/+oxa/HPfpc3paBQlctX25fcyU7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbed005a8-ad5a838f-f1e3-4d86-ac6d-7cedb0de20a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12a2f876d6b145d9601208eb8dbfa59b456947a1d1d2f3f9935c54bff7941b3d
Date: Fri, 25 Mar 2022 02:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648173778
