Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643DC1387
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 14:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655131439;
	h=To:Subject:From:Message-Id:Date;
	bh=8JZRJ0LakczwCN/ycZtU+awdShKPqbA9YKw3wz79fw8=;
	b=Ff4C+S+FhDR4pZVb9CL7aaMfJFkMGRgiCTPJuK3zWLibLlHjy+fKPMf70rqqZYES
	rMMQmziKRsz0kzo/z9u9DT+vzIcaztz72vtXvEdf6VsPyI639CS9V+KVkQxQi4EwSmj
	OD8HQaG5U/wI7O3fiiI9zCpDbeGQ8OamgXh04I/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655131439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8JZRJ0LakczwCN/ycZtU+awdShKPqbA9YKw3wz79fw8=;
	b=WFqDY5kVLndbcb1B4J834ep+TA593IJrXmHwIkgcrqxmAu7P2tcvW2t9vmhrFZ9J
	sIX7s8B+opWN+O4rfLIISuHWTnMGVDc5RVbWcsDN3xdviDlZs99OdFlf+xod9uDMTzo
	MM/D4EZz58SjkecwUuAwrHJdjM94Q+8mReSOV44A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815d858123-4a1c9540-dd63-40ba-b9a9-1752f0f2c256-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 341fd4788ff1d1c34fed86d8b952ba5681e774e965f5cc7680ae867143e88220
Date: Mon, 13 Jun 2022 14:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655131439
