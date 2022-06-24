Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2957A46A2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656100612;
	h=To:Subject:From:Message-Id:Date;
	bh=NjNnPL9djI8hSzFR7mqTd80Cz1lEdSzuee6JS8FGFYw=;
	b=BPyf0o7rX6v58yCgU9s9YyKFu4PAcO5sSARcVVUlWmDweVaXIXnDQvWvYvZEVyI2
	tNob5bn3uBRCIBWbu+LnK0pwxerCsf4ds2kRtqH7KUpmNniN0z/L/rdpoHpROHifbXw
	1BeCMBIPdorqoLpVsn//W97JeI75s7M8qPhvO55M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656100612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NjNnPL9djI8hSzFR7mqTd80Cz1lEdSzuee6JS8FGFYw=;
	b=Wz4sqEdFQ0Uut9nP/UfdvAEVPo/gjtZLJm1l++dU1rUp/rTfoPanbWsC8Cx1Q96+
	HJRcIcKFGHubJEB9e/jASjOL07cAwOmAk8YVf4pgKyMdaLUSs4xqwHGqObVWT4FXPwv
	sxfZGEcHd2sX0PcYYDmhcTKVn/cGduhca98QX48w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819749e8d2-5ad480aa-5e15-4e2c-bbb4-8706f475cd77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4116f03e615cd79ea41f65ba6f332acbfc8d19da38522000c61f1dc42642994
Date: Fri, 24 Jun 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656100612
