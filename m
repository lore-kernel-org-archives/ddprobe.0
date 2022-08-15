Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CDF111E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660603852;
	h=To:Subject:From:Message-Id:Date;
	bh=gxCSmvV7VluodvJ4IEpOK/3QKzy1vlwUDsRbjAEPyI0=;
	b=PGY8S/x2tLmzbj9G/qQKxVf09ZrU1tDOZ/gsJPUnhNu6rcbEQk45UW12z8B12u9N
	kB5uwhGeHHio/ouyyRDuHx85PXAKH/hq/uHD+NCyaW3Y6kd9arAcEv/c5TSnZ11bmji
	w4PaqGJz66HEKtR+Wljg/IMyACQQ9Aheh/bYwaQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660603852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gxCSmvV7VluodvJ4IEpOK/3QKzy1vlwUDsRbjAEPyI0=;
	b=DTxNBau8I44MkbjZuAPw2g9gknGhXdFUf8WhlU0v0q7iAzFbQiaBIg01m34rM57l
	EtwSiRtxNYB4AZuQuKsXj8zYJ0Oljh1Brh/KqxFsfP4sUj9Gee6IVGqXIAVtDGXn/4h
	eZ1+1DMocaEdcD99HP9gPh5mTEgDjOhxcTjEF7gM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a3b3e6eb-db80b87f-ca3f-4ff4-824d-63128cfb1ab1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd7852ca83ffef1b506ccd14f60b16ace6f3c1a18d8ca6ea365199b7a531f7d1
Date: Mon, 15 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660603852
