Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799B53C0C
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660648252;
	h=To:Subject:From:Message-Id:Date;
	bh=qyZC0pAL2QoPTUwJBrbA49qvKeIy0hxR65e/lk5lXtU=;
	b=IYItr/T2Rz/PdnhlbHHqJbIiwQluheJcOZVr0Vuls06B5tR3YjKKXOSAKm43h0EV
	dDwmhURGH8GMPW+yKVFV98Ui2gs5Yx1fw4+NnH5w7jz6wDVxtrZqDYOvyq4FY7tngjT
	3nQ+f4vwAX5uYXxbm1IBD6KFNOSbxRDvoeKonHLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660648252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qyZC0pAL2QoPTUwJBrbA49qvKeIy0hxR65e/lk5lXtU=;
	b=NR3j1Ia05AyMf8V62ftI1ktNF7pAGWeVKFUlJ8FYu1WEM2I5ifIbYhR+X3W0Xykb
	7ufTWzn8eOYLCt4VeV7PLyN92mX6TetDJ4NKtAOjNzGStVDb0gqa0X3DjTmJf0xGWD/
	QFdGFyD8xfi+poXHOpryozrSnDOP2a8SKLhKId5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a65964ee-c4c30174-a49b-4f48-9b17-52cace378dfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee6c420cb40d23d50238fd3439e6d92441783f07efc9edd640cca287bf46c4c0
Date: Tue, 16 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660648252
