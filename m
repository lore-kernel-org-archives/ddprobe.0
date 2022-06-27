Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DF42100
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656320212;
	h=To:Subject:From:Message-Id:Date;
	bh=sFKWzKwg+E+xVOS3W3BBhkP+sczjt7In7sKZh3GWd3w=;
	b=L3PO/N97FMMk+aI912iB8ByxOU6h6cGRMkha8wEjJAmGJCVlqiR+4g1pGjyj02w7
	1C3MIQthHKgq6SXTnz/j7vevXr3CB36O4jn11VXpXuS34U3ux7D0vGWozyTgF2Yr2U6
	qaIo3JnURUj/YAVbDX7P+1/qGC4JnExMtHzQpwbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656320212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sFKWzKwg+E+xVOS3W3BBhkP+sczjt7In7sKZh3GWd3w=;
	b=EI+kKPyijL6r+or79R/e6suqzMHvWA6FsMW/TXqk04Xdjfytu1RWuzDN7wjnRS4f
	a1ZjCpRqyymBpTbOW2qYyNHA7jYiql4j7np1lWXZdQ9HfMeaen/9/ttJ64YqOIR8Vc2
	LnXJlo+bPEDtHaeklZvWLOBeMXQJ+ZIep676RJw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a460bdb2-5ad69d1b-ee7c-424c-abb6-954235bb11fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20ee1f31fa2d1a9288b178a7d0bae156142ceb9b86c78ce088e15a6dc79bd1d7
Date: Mon, 27 Jun 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656320212
