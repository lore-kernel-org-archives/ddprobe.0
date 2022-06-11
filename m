Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7567C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 05:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654925579;
	h=To:Subject:From:Message-Id:Date;
	bh=dhBs4GTkxAG/65IzSKJgHJW09o9aI9KktNkQuGmQTAM=;
	b=DNEfwxJmlGYlXBpsLkfdIa7BVe+mXhkzVyCOzrIyz0jr3FtsxzTCPbYhdzXm5CSx
	2tQYTxlujvlvp2HdKc5rWoZ8BU4PQDaj2eS4oUQNAjkmzUHYe6RDp4vVGFjVqvzCnq9
	tWo3+4R+sk4ZvDqr6TmSvHzxboib5rgBC+VhUX9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654925579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dhBs4GTkxAG/65IzSKJgHJW09o9aI9KktNkQuGmQTAM=;
	b=MaC0Y0PUZNcCA0wvfCeaHMMVGmxd7r6l89AE5OW0BZn/kku07EwYuuDQxza82VvY
	/doBN5f51K/Re4SuPZfbgzyDmZEiz5VoC4icnxFM8IaFkX4//l8/p34BrMgBs3lubgN
	LntKS8sTtjHOXflltzrdL4ZHxxTSsmUNXx9Sg01c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181514053dd-a1bb3786-8b82-492e-839f-68aaa7dfd713-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0afb31daa8f47eed634cadd12fc70a9528a4c56cdabbf671f0091072cd07ddb3
Date: Sat, 11 Jun 2022 05:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654925579
