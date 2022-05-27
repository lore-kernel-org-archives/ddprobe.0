Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F17C1FA5
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 14:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653661859;
	h=To:Subject:From:Message-Id:Date;
	bh=wf6T9qvMdSufEFsm2HmQ+t/X9JAEDwBQuqIZeYRt1Ac=;
	b=hl0PHUEvgg6DtWD5GW3NlYP+OASkIfzxv2BqnyuJqDkFnnfhAeOKp+82kHo/KVgs
	NdaMld/4STohDQS5XAR3yc4pyH4eq777qF9ruujs/CzLeouehPw7tVV1khnHLF24GHl
	PI6JE7dmZ1BT5kSscZOQoqZxQzbIfuJUISR8KcAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653661859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wf6T9qvMdSufEFsm2HmQ+t/X9JAEDwBQuqIZeYRt1Ac=;
	b=XjjZIUgiUs0dUxav/6+RTmZWA6eRYw4ihdoNnCEgxyyqWu6TVTdTn2+u9nEkDsOB
	tjJosbjm1UcXv0NQSX6VbSReW+hLoDkB5fvUsvvopa0xl/uKX1cv+8Usva3gnvt9XIg
	du6LmJwKmbj+YE5Urhy7Y7dpJhb4kifC637GBDFs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105ed7dd9-130abdc0-ddcd-4116-b320-f41a008c7dab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55a8e21f19463e5aa08ed90e19b35da363cb501ef440e353a6f554951bf8ec31
Date: Fri, 27 May 2022 14:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653661859
