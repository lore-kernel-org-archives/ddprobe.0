Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092B017F7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656235012;
	h=To:Subject:From:Message-Id:Date;
	bh=IxtGtVqJ9kMNbLmtJHrXOjqXyaAnr831LbGLgBeFscA=;
	b=jSVUIyzbzy+QBhxBU/7OlFbLMwQBxTCWpCJiIMh9EBhp6HWx+Yyg5kWvfWg7D96i
	C1fOZsM//WnkM6tr8Arex3jg9EW+HtqyZqJ+FvWtkMJxVXdB9Xe+e6cOQn/QPjjOE4s
	bx+WQQ3lPywsaj8B/tiIqmwH1z7lMGKSpasvaOao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656235012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IxtGtVqJ9kMNbLmtJHrXOjqXyaAnr831LbGLgBeFscA=;
	b=IM1QVtA3X7asA9XFpRdccDIgvUJ4l0X0eFRvmNKi/3xWXUU19z/s9LBw6Xa9JnKC
	cMriECcorRW9TL5sBqUPOHns2OYUBL6sD9f2Hj8kCW4wOw4WJKX2nytuhs933s4UROb
	P93dFS5QT6NNIHGAdDastrdKlS2/ANSrR5sfHeVc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f4cb0fd-e6a459b0-6314-4e56-b07e-c728a3b34602-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9154fa50685fc8c280014506ebfa9432c49d1ce3b35e6a0ed021155e05c4f88
Date: Sun, 26 Jun 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656235012
