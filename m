Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639F63FF1
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659219052;
	h=To:Subject:From:Message-Id:Date;
	bh=DF4GkzUXAnzKj+GjFfSMV5YYe21kZFu+k5NhAmuyTPM=;
	b=bWHEBlG3QsC5TGISHHB3hejAtnhQGK6P7T2VVRy/wVzjjMQkm1aRUoJwNKPfxqYs
	kZULG6/ARjxc/3WhM6FuYnuX9Cac8Jffy0FrZ1p3TADRTJihw9LLGRPfIZYwYQ2ATB1
	hydKY0ZwX0tP3aNsY7QBJYoZtlpaAuMxU2NSBWZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659219052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DF4GkzUXAnzKj+GjFfSMV5YYe21kZFu+k5NhAmuyTPM=;
	b=TANHUM+hT6OOd0wLgKXOyacRTXopIQXh2JHUvB2Au7F2T/b2qg/OQZ98c0HIGtUn
	dy3FCedezhT4DDUY2TEGHzdbOspFywX7CntD9dPzbKYEmF70VO3Tx8Jm21thhf2xDZC
	DR5la5P1Xg+M822KKhnqf/txqMXSp6QPqTbI+3pU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825129883e-619b0cab-61cf-499e-baed-89a9bd1f9e8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ad8f53dcc8cd5bd820f31ad21aca318bdca94c814d72ee60b797d8ddd442d46
Date: Sat, 30 Jul 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659219052
