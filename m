Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6875515A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659229852;
	h=To:Subject:From:Message-Id:Date;
	bh=821XfKRa5Pny0VH89WV5JJMVBPMswhSpL9l7QtFOOsQ=;
	b=Yg4K8ztmLs1k7WIvD7hHyIAWlHNfo5xbQxZf7L2NFxsriABWIeYv3qR1AS4edWKu
	S4ccoNTws1Az9+zBlZdUWhnWTnBJbFq3MwWPHvY+cNcQ937ezipFdBg5e2pt9WgMc7b
	Ev2EAyGTQCkfKh+6qWmzU/WiGh6e3eCdOo82KkBg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659229852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=821XfKRa5Pny0VH89WV5JJMVBPMswhSpL9l7QtFOOsQ=;
	b=AOL3c/smSzkiKS/WJUg3a+ERyCdea5CeI0SSwW61xD9czReFU4tZNITHLcsO52LS
	XSztjhLnBvLCbEICMDFDhBtUjcOr+mWxZo2adpDHTcjKHb5g5YYBnfC5ICna6OmKkw/
	rpkPzvFVEetC0CP5J/KYWlk5FggbqdU7cGiQKorU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018251ce5405-1e30611f-3b5a-48a4-bbc5-3563623256b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73d4f2051afed8a1f94244e9f33dbad55398583ea8204577a14f553e25509460
Date: Sun, 31 Jul 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659229852
