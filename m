Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB0C1C04
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 13:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658236012;
	h=To:Subject:From:Message-Id:Date;
	bh=TT6o8B1wSc7Ek9jRHO/yX9tl7WZe71AEt+ih485uSkM=;
	b=MofF4YiOBSts1aSCN8gezpBYlZlDSPcqH40IhhDUXpyDHJR0WDy88b+9TERQKD6J
	xPEpVjuLkmoOEXfhrK2lT+s6RFkOYk8rYzCKi8HrgAuaeIPG+yRDh2wpswRYiU56FY8
	iHtla+vZOWulEX9jqxiFZHH+6iA/pLe3In6xkV9I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658236012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TT6o8B1wSc7Ek9jRHO/yX9tl7WZe71AEt+ih485uSkM=;
	b=jgV29wB68Q5Zgmwkrm8ujScO56/88Ag3cLGxMnSCBs2l/vCRPCEaYPBhCgwLScWn
	k+u701SIjX5YQoE92hy75zMoPv5hwaYUMr3ny2bRT/YLW0atvV+nyTxMnFngs+THn9Q
	nB1p5jckSx/rp1gTqcHV10RWVqxHIaiEqIotUFCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821691874b-1a1e38a6-98fe-4fdf-91ee-707507897def-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79c2504acbf5f9ad963e34fe259f8507414576c5a2fcee5f7b319c35abdb0880
Date: Tue, 19 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658236012
