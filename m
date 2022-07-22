Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC4115A2
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658473612;
	h=To:Subject:From:Message-Id:Date;
	bh=2Hxi6ueatFfC71k8nybhBA2zsnZGGA1TSe995ZTz28Q=;
	b=YwWgyA1/Q7SvgneHJtrCbKz4/sntsZeQVIurvgHbGiTu/9lWlAjpIS6Rm8nN95Dy
	WU6MWQQ4TSYuLCmpm8hgd34rTRJFmY15ifK37A+u7bhWdcnLeiECgGzTMQatOvpkIf9
	WXvhnYbzdtQepBbUO+06kXb0fz2r0EIje7yl/E78=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658473612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Hxi6ueatFfC71k8nybhBA2zsnZGGA1TSe995ZTz28Q=;
	b=cM/NbEdIGjOXQaegYQnqpG1b96tJzO3p1t6Xxfn+Yr4IgWHyWVtSli8F5kojs/oh
	a6P9scOAxLj/A3UJii16TFNWL2gK9u3lf/E1rS8U31vTFe5bZM+vKAAV8WBedMhfhJi
	rTdoXnryC5CWTBFZNd0KkkZIrKqPXpwlXaD/zK6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018224bb03fd-bb78202a-b269-497a-99af-19900f64533d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a58c1953bcbceb8059f9effdc2f66204f65890ac2292c4bf044444d6d69ff1e
Date: Fri, 22 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658473612
