Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1627D23C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656155812;
	h=To:Subject:From:Message-Id:Date;
	bh=5LUQyluGqwPkvwxNU2SWp0pLuiZ+fTJCgtDNb6WzL6g=;
	b=QSonZ+O3Osz8G/VnpPyEymOGwDsjeeYouKYIQDFBcq7zKa10NvK8ynT3gj7zLg2s
	/83umPFlvXs3P1vaj54y7ukHk6YsIomf9rQ+Wqty3WNonWmWNCFjDWu0PmVAvP7HHYF
	BPF33fKBUc+vOzJSEh2TLyT6N3kECAYUfOlc+J6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656155812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5LUQyluGqwPkvwxNU2SWp0pLuiZ+fTJCgtDNb6WzL6g=;
	b=Mwkajn0YktCIthAqtUuv2BV+bP3cSeT/nfcovouIUHl4rM2rOugGZvLEW1qgS7PQ
	vhLswWNWwyG/iROXiA0enyOo0F1CYa7VMfl9vGd0ZFwJftl/pN8Yi6JQ4ZfQks+QB2t
	bOCkSzXJS/R5kDL5DuDfMiklW20wJITHk51Erb/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a9431d3-1700000f-965a-471f-b38b-69e5fb3f3840-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14f994946045ba28682a8fdac1414b0f95d56067a53e6915fa442c1fbf5383e4
Date: Sat, 25 Jun 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656155812
