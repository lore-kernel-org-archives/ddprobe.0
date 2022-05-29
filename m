Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D4D2F34
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 20:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653855959;
	h=To:Subject:From:Message-Id:Date;
	bh=AeskzMRCMayhgALxuhS+9qfNhaeBnuunQsPTKqNNCD0=;
	b=L0Keuzd4U5cXzeM3Ew8UJHflTzEgCwZOZIwtnwGAnck1ncVPQwKZV9WRzcjrP5gO
	2HchywmEswFohPoRikfFkmHRzbjG0jfikKq8jURsl/KvxO4NxOvUAz4+KoIyS8fMn0n
	VW9VIjpaUvOW42KpG/CTCKtmOHOjXN0FN3iIgKik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653855959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AeskzMRCMayhgALxuhS+9qfNhaeBnuunQsPTKqNNCD0=;
	b=BhcbrpabdIPumY74YuITGwKspb/jYS9mNZTCpDbzPdYlsVRC1QAWLPy56rMo7tP1
	dq4N7DlgJJArzYka3+hgsXPajMiAYgU+CJeAgq674oFK3uvM9EtEa3FNKskoW52h9Dv
	KLbBHehtVBahpy/jjMAOn9h9kIz6YVt7hVhZIcng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181117f3939-0cb2b28d-8ba6-435d-863f-a966bafcb4b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c07da6535b1c4abc776a25515c80aeb5ca1ba8d101d2de3a0752a2f6ed34c843
Date: Sun, 29 May 2022 20:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653855959
