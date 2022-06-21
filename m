Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F671397
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 16:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655828939;
	h=To:Subject:From:Message-Id:Date;
	bh=R6HORIS2Xvlc+qF5Jrj0+ZQ+aOzAxPZD9KkM+3MJO6M=;
	b=M9Y0DeiJRSSqBIj2BBsSZer3wVZ+vShLNMZQtH1JxIFJ7PB+waCV/kgI0lbIUW02
	V7fGwzSkryqbMEZ/XjukFWsJcrGosdgOr4kAIsrCxuqUviYsCymNRT5TXKK75x/Ah8R
	xmV/r1dHj/BoUwujBioKt6rB0bgOkmB+MxFqX8ro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655828939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R6HORIS2Xvlc+qF5Jrj0+ZQ+aOzAxPZD9KkM+3MJO6M=;
	b=fzbH1y2uSlSptcUFCB7YBB0Sa6w1ShyggbV6QN43N4NfiX2LyBw5ivt/82JYvhMy
	KTsoR1AR8+j24Q+xLL4LwvV1sIYfqo0oi/y/HAODA3Exo0mbx1vH82MEVevzx5vj+oH
	fEklVV/rIB1V6efINL0jZrjqDnTt6cM7xnx62ztA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181871881fd-e19a0a6c-cebc-4554-86e8-037cd65f222c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f45e0ed5d41cc90c91fe02ee1fe2c8ef81f84053dc1f7b8ebb12614159793ca
Date: Tue, 21 Jun 2022 16:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655828939
