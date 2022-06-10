Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E8D7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 20:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654892099;
	h=To:Subject:From:Message-Id:Date;
	bh=lzlwGLhC3hlWMDNT5HdJn13MYTtOopelRmqwZIikEOs=;
	b=ZLzqvFmHXNFlXOKfLBVtUZUX42/zpFkkGGfFXE9Jx5lkA8NXj017IuBtJSlKM9mQ
	2MLFMgV/HxW96LKh1vEW1XowdWouptRLh5JaIxVZPSj4Hv60kQHra3W2KzRNRBiP0Lx
	QBbI6egqd81PnDYNb+7H3BF3Qge+C0un7nX42358=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654892099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lzlwGLhC3hlWMDNT5HdJn13MYTtOopelRmqwZIikEOs=;
	b=U4GKZ+GXQ9o8n3kY/3mv3N+/plAd51S6qjpyzjjfWPaf+FtA0FzoEYzlROHjIp8h
	0oN0HRagEAIp46kbxyFCedyQOqThm4Ib8LJkXr79ekbBzGMhK1PqkrwzphAuzr6xEGx
	bEDw01HJixBvUishO5uFN9YgFXuM3612JdKjU44A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814f4176ca-e9593fb6-ec95-4c90-8571-be7524d5cb6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6a99297cdd3f878b9a64e85112ea870ac6825b32e73d7bea8246d9e8ec3594c
Date: Fri, 10 Jun 2022 20:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654892099
