Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D7B1852
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659876052;
	h=To:Subject:From:Message-Id:Date;
	bh=vcyhVp+DdSqzk8F23zNHpqVtU9Tf0XIBuGBZFYXZ29I=;
	b=Mj8qtXteKBlLvApyWHWFIs2demKKl+zsqQSwTOD//bfKvB4yrC89MTROisMBz1X9
	LeNvkuGIAM5EXoNX5CtkppLCts5WWakCm9sUtlz4SfLm9t4w8CRBs3sqPlWek3z5N1F
	lHIf0UOaeO8WILL6ysxrFahB9juGhqFC7so7Ytr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659876052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vcyhVp+DdSqzk8F23zNHpqVtU9Tf0XIBuGBZFYXZ29I=;
	b=B08VdLFb5SXeEgN1Q04bVahTyd8HKutpkiRjaUmbbPg7M0yqzXrrQYNVQkqIz609
	q2xhyfCWy+dHB1IqY7LkrzjfR69Oc6O0A0kjQHILFMH+jzh1qgebBDFsbsJoCDhuNbf
	5ybvKgFkvRwTTsjMpmICs8o1VyQ0URrlJ7DlGENc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018278528e5f-1645ca06-c9bd-47b2-bd37-520aad3d95c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 001d207854e98d098a3902dc76e0be209866329ee9bec772431d283ee36154af
Date: Sun, 7 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659876052
