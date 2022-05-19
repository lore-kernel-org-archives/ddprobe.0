Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069023206
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 22:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652999339;
	h=To:Subject:From:Message-Id:Date;
	bh=DBuAERvMTcT8s53vziGyXOFFPyq1G3EoLj7LlUYNTUQ=;
	b=KrhtTMTtoLCXyhIiw4mhL7mqI4qTyugDXOk6NmdoE/JM0TP2LaW/ORzbxW8naw31
	gMggESl1L2n163Kmj9okGyi918uLD1vKRm7dC2Z7EKOBpCWB4wRCJiDGnZ3CuMnHXwq
	VUmDPb14SQbo5gZvMupde6ImwJBnBtqQOwpOnbek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652999339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DBuAERvMTcT8s53vziGyXOFFPyq1G3EoLj7LlUYNTUQ=;
	b=Ko11LF/rbUl6+gf0IR2hBjHQENxtgKqyk7wtavbtuY1Am+Gp5uk3kTRu66rLi5G+
	AAWRbkRwzIPnJaS+U0ye7x3BIESEVEiS1yCm1Bv2IVpOsSHlJsEar8FBpgfN5Z08sEs
	uMRk+6IUIp9ZCUgzwo/jYejZ26VReZvU14bi8IhE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180de703d05-396b040e-0345-4931-a897-9c8301a6b6bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 395d4afbbb0d27895afe5bc635ee42d823efad2443abec13c7e1793c122e68c4
Date: Thu, 19 May 2022 22:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652999339
