Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1663533F4
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657491412;
	h=To:Subject:From:Message-Id:Date;
	bh=qWcaZFRtYDkWZNz48iHtX/Hcni4sV8IulXguRff4EMY=;
	b=OVBzL7xE7Ge8rnqawiGw0l514qMshoc4A9r5VWzv+SMwcrljOqxQWdS7eukfTZS+
	6d40vT5DLgHCce/Znhs45TMKTu5Wi/0VNkj5E8Fwas5EHNKcwtiHiKLSSAsKeEhOZKC
	+yEV9KMTC9EFB3f0JfhOamN3CHElspqxktTMQpDQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657491412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qWcaZFRtYDkWZNz48iHtX/Hcni4sV8IulXguRff4EMY=;
	b=agmsDR1CiWwYG2hf2UlFhSCU9jyx/6azcsBPHMuzNm/lj8ZO0u9uhChefFeATP9b
	D0zHfUaIXKxwTkVjyPxXPB8mlyz1VNjQRXq9lDt8AzndUk/wRST71SLzgz99ITw7tlf
	sUayG/j7Oe30wMu6ve7lo96aB3KrqKfb4poLHZoM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ea2fd553-6c49e3ef-14c3-496f-95eb-9c28c969a134-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 197ee34620251a41077c2482e5be968c5e918c397b533dd76368a46d9560406f
Date: Sun, 10 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657491412
