Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E8D624
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 12:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652530079;
	h=To:Subject:From:Message-Id:Date;
	bh=DbHgIFV3EyJpdoeIFQcBWB/G3FG3gLB/O5Sg7pYww8g=;
	b=UhugQwDUcJvdZ1rFPbK8QYndUzwQSodTK6s0jMVwaIPvLfqjRTY2mf0AQ2pJDAmP
	f9MarILeS//KhSe7nJH07TUw4AhG6nLhfXvYgm+kR2POG0dFjR0wwHLl56/3CxcUs7B
	xcFOgsgyhlj/1xPAymAViDXtRecffeU8Hxa4iJZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652530079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DbHgIFV3EyJpdoeIFQcBWB/G3FG3gLB/O5Sg7pYww8g=;
	b=flaM80xrS8aaMYJkLF9sk07Vh/mdVoR1xCoNEVZ6s/MHbo+6qS6fRS7pcbjBdmlW
	ch4mG6QKnIuaw1l+SuhCBJ0YTiAic4gqSybmoiyfnyNCHtwjLfX1o/nyvsG0XUaO2Ep
	ayO/BI7vtrhAIkyA8lEm/kR+V9qiAlNOzie01DhY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c277e61d-afacf2ea-d271-4f25-8819-8f9830d95987-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f56d224c4026c8b1858fdf48ff59d35a4b1d5f030ff4c2136e0d3fa83b65a1e5
Date: Sat, 14 May 2022 12:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652530079
