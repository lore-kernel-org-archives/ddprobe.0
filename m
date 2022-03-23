Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D1A1360
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648012584;
	h=To:Subject:From:Message-Id:Date;
	bh=m6ouktTQ1eCC0mDe7MRgxBi+VYItz+AelfS8UJW/srQ=;
	b=RW5d5uMd6poNcfg+yLMIn7izVYYIgoiv5jBcR0DB+DyF0mm7zfMNs1SIaSA+iNtJ
	ivlILJEnp95owfzwHUNMgKbrqFefpZx2T4DoKPdTbwJ7EtCAxPYy+Z73uUJOnvoRI7L
	bsY0bcr8EN7T69OMfQ55vEnPunfenryox2sL1H0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648012584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m6ouktTQ1eCC0mDe7MRgxBi+VYItz+AelfS8UJW/srQ=;
	b=cTUntG2tvTKMTOd6ln8nSlVONB5cw42kU8Uqp/D0KOiY6+H+/TIsBif26MpRIRHB
	5iyrXhWQ+Sjt0ip3RZPSeJUs0g3IljfWp6GB64YBxzf8a3zS90k3YxwCX+atwu+uwdn
	+BtqUNteu28NADBfUNi5UOulaVCb7dwaVcbQgTQ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb534670a-97155e0a-a67e-4311-9a5a-f837d3f6bfbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c02aa68684507673b1f0307bda63334f663294f236e5a89549812538a1e3bfc6
Date: Wed, 23 Mar 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648012584
