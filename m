Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12B733C0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 13:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657892812;
	h=To:Subject:From:Message-Id:Date;
	bh=Mko1uvWk/FyC9xVQhXwZ9m2KpkosL2MVTrMYk7cjasM=;
	b=jIh0JNiuUWHvr7r9LWGLo1M5WQtofxbOLoG4vbSN54ePI3wrsmJ/SdbUnOps3KE0
	F2xLOrTLOVAJ0ZLPUgYlz/NZVuOMo0b2n2I48nUuZH7fKSs4NuAxtcJ74RE+n6zBGPZ
	yNP/N5jnnj25KalShS+5eQr7lBtyvOeZoqzCPThc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657892812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mko1uvWk/FyC9xVQhXwZ9m2KpkosL2MVTrMYk7cjasM=;
	b=Ut+L6HR0CFGyMW+daIxdO57TE/bO+vmqD54hnELb2qI8iGSXsyyh83BeC8QU/YV5
	kiBEdM7F+kjyV9EPgJsBK2JMF1r7SETTKDYtHHpOoCpCkOvSWyam8wWit233VwIOlTt
	IXudWUJNd5hjXD/3hwDiJGINBAcYvplzPIhMOTRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182021cb5fe-c93b1ace-0bd6-479e-85b7-73fa64127874-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d345edcb8fc7d75fcfd5becf3f31086705ea26382fa44fb610f377ef5808d86
Date: Fri, 15 Jul 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657892812
