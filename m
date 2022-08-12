Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D882936C
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660266053;
	h=To:Subject:From:Message-Id:Date;
	bh=DH9zmG5lTlFlPDFO7ZWuumMtJi/DPqC3rzcdVpGx+90=;
	b=EkDaX3uDpkIS3X2Tn6iMrxSA4VO94Ze86TIgSa8bpT/e1jdgLfpUHu3wRaQTlGq1
	l0z1q0q0NkRNCc5A7/cV5kLlN8WexYkUxgnYpMN+3jib/oN8+3EiuDjTv/wIL9geiHw
	D2IJtfp+8K8veTxk3uOaxOlZfixNGIQB33zMdBQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660266053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DH9zmG5lTlFlPDFO7ZWuumMtJi/DPqC3rzcdVpGx+90=;
	b=hMqUmiIZ3J/1DnasnQasSYuaD6/j97nIYNY1PVF6PL4h6+tyKWugGDmZ7YoCn+ow
	yDZp/KqvT5H30vPODL3TOoADtJECJIo3y+iEOM1MLOCAWRnJChlcNEWL8rm5yBfwHm4
	TfFs6sDMcemq3afUKgoDMcJUh/qPiLjt3SfjAf0A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828f917bf9-8554f00f-960a-43be-b75e-b9296025e571-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4871c92129e9aa5ebba2f16ff6cab27add44447d4acbcd00fd96475db0600b8e
Date: Fri, 12 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660266052
