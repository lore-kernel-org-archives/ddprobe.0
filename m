Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636B57C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659874252;
	h=To:Subject:From:Message-Id:Date;
	bh=opQwvtYb7UqEIa3WSd9y7avDBdtStuIz5QnK1A6uDas=;
	b=EwiZjvPhMCwN/d/oDHNd99PoHhItoFn1xaiQC4iWbb1mhozRXrLs0bgbCo7q3Fnt
	8LgMWm/o+ZGH4xJ80NIbiYdQnL/zPzd4XPLyLBrx3VqZmVc6UTsyhQIVszPC3feiJvz
	cIFbXCIjYp/yuDuQIozBF8yW18/rQ1korfYWNf8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659874252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=opQwvtYb7UqEIa3WSd9y7avDBdtStuIz5QnK1A6uDas=;
	b=HKlPoLzb2AGRsR/U4OK3pL8KQ9HGcPxn5Z388s+kDNXEiPoEgWUEtbNTlfsVqjni
	h21eC/5JIsWGPyx3Vgt6UwF9d+NAOEi5bAp1ziHYCWuGBdxymeHmPQV/VAQNRWwThJy
	qgDybd1extkOfaqXwvV1jqV7UD/CyI/qOeR7Rkb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827837174e-36b07dfb-bd24-4ef8-b760-e225b03e5d5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63a70cd70a73020c431833e2b0397d642782177f029a86ad602103c62ec23e48
Date: Sun, 7 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659874252
