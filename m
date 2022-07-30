Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474333D90
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659208252;
	h=To:Subject:From:Message-Id:Date;
	bh=1vptAGTrcY5MuHqm38OkC9LmpqYavUOJUxMk2PMZH/Y=;
	b=Jh6yJetJsA8q4Tg6NOC3B4H1A8UB5Tx37aQ32tVl+RyHVKWnfqZXNbeUPYrJG/Gv
	TEVgiK2uO7Nlggl77CQvejFsGYUODQQTttV8g8XvzIyr6fU6jJi40F2OmoGWhbvENjt
	SSH7nMwqLeJHazkx2mz9syH4ROi7kkouHjNRxVok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659208252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1vptAGTrcY5MuHqm38OkC9LmpqYavUOJUxMk2PMZH/Y=;
	b=PQyTAPdonVsVTFqIRFwDMK2kPijaNPYT7t6vNtqKv3U3VYzazXmXHfGHZF1oGUOP
	+arWAoX8jNIprhosSdT+XkWt0JqIXG4Pbeo0qzSg+1QMqRoBmgH3jrLwx9a7TaJKr2N
	EV+uLx+RkdBXdcPYqfWho6PNlSqhsrnUB7s7lKBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825084bc8a-512486f6-f6f1-4af4-8f6d-5f99e52b40f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ac7603b35a751332592bc69d1bbb9683d9452e5603385f47db165f67ae13f35
Date: Sat, 30 Jul 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659208252
