Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647A823CD
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660906852;
	h=To:Subject:From:Message-Id:Date;
	bh=jbGWO67GxXbbU1yo0rZrSaxSRA4Q2XSJGN03VUaSdVQ=;
	b=QQb3VT/5HQv+KO18bxDtGDdoTRGY1MaLyZ1tNpTxHc2qfamv9pIlrOegfc1fq+39
	szxh8XyUn386ImUqCWyFCchfVuJIQkRFHxt6Tl9G8SkgPqG/RR5M8HnjtkeFoYKtIgY
	fQ9yG4K7URXVW7yZ4JQwFJn4MYon+g9D5ZD2UXGc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660906852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jbGWO67GxXbbU1yo0rZrSaxSRA4Q2XSJGN03VUaSdVQ=;
	b=PeInYIAaHaB8W6wS4oTnZkghooTBt/mofTjGN8xZUrxGsRU93OYW95lmp8BRplze
	LuBUGPnE3RUS+DtnZfioLC736UNolY4Mmd7jJvpvecUu0YmlC2vLCFOEORrD5UiFevh
	H2pB+2QN5XfgPHRxrUYuKyycDv+6qAVLMqC8nncs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b5c350e6-ba8cf635-0103-426b-b186-58c7317b232e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50620ff6770bb48e22b9b69d455cfb28610affd07e7133b90ed7b9fc8665cf87
Date: Fri, 19 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660906852
