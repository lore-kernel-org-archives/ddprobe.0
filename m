Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37892563
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659720653;
	h=To:Subject:From:Message-Id:Date;
	bh=M1oU/RshEb6swiz/qq6RRf9E0KLwRwLm3NWGmB8KDhA=;
	b=leSeUn0RNbQasKK+RVOOvJZXyq5OGfRe9WsmOavhEVT9Ep2PhwloId3YJSeNIexm
	BX+8QHvLOede/MJSjfB4Jmgl32vZDgc7znBGQLs8qIelhjvy5ZhCqIaBQuBul1/9BZU
	R+AJ+9gg6RxzWWVlK+q67ejepd+hsbnf8x13pO8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659720653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M1oU/RshEb6swiz/qq6RRf9E0KLwRwLm3NWGmB8KDhA=;
	b=jb8g+1a3SJqmsdmoU+8mkuj5wyw5h8jR+x4zMSFwH+rgijb36KeIkJpMCu0JDsuf
	QmfUnKXL7OK5e3qe7mlxLEILeQKTDpAgRiJ34Jf7oZEDqUpeVQFkoHXHgAT31cnHwL2
	JBbsSZHFbGqM0mr8n4R6YqVPq14xPQSlTGi9RtOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826f0f573f-37b5130e-f244-4bc2-b856-7bd710a17154-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53e63f19cc28156b9afa3220865f8bd9d15bed2580b1f0f281648eb9d3195259
Date: Fri, 5 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659720652
