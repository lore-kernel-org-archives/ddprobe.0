Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A8D7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659316252;
	h=To:Subject:From:Message-Id:Date;
	bh=IfBpv2o4+sIhIO9pmkFLcuU8hjmQo0DlSjtNaIs6GDQ=;
	b=c7tAf/rYzfVlCUhaNnYFEl3i7TtOZftZTbqtM/f2Rw0Li9nLdstO0DAAhnhMigh8
	ZIWo3Vg0npiLzYzTNaRr1ZJIoKr69PD9gGeRKQ/LnU1T3DxB8Ekd81LLCoj6+M4fL6x
	3CKfl4cspmUWEt9pGjy8q/NgFued6GTp+bQKMJaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659316252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IfBpv2o4+sIhIO9pmkFLcuU8hjmQo0DlSjtNaIs6GDQ=;
	b=TzQmKRcda5FTESR0Byhdg2r+2GeFuE1nMmIuapbHDNrzNxxm08Mm2ngDZK39dq9F
	z1SDL91OWCBjZrRTzquYr4oc8CEXAvxWC98B00b00tnjLRWGVES5/eSgSkL8nIX3bO8
	gMMj9TjApX2KTMXDMF7FJIyJuFqYHp6ZARULk734=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018256f4af72-1caacb5b-9e16-4963-87f2-86d879d2668e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3158bb6777ed0cd0c90b9841dbf2c3912470b709b52b09d723b498d4f0a6e4ab
Date: Mon, 1 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659316252
