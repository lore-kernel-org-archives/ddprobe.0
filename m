Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1EBF17D7
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 10:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653044399;
	h=To:Subject:From:Message-Id:Date;
	bh=2bw9TrXkjztGriNDw05SG/5wb9XXvh4Yn8kVz1DxiHY=;
	b=IhXGt9evwj7Xkol2zcgI9U5dWSPODE7quuieXVFrmmkvodwysDIHR7VngzaZrans
	KAjGIr2akgzevJoLRznxFckpalyUzAuJHg0MbCaExWPelLfgF3RsvBWyIamYtkQJ+MG
	CJI/EcN4AQTG8e30OVMPcuB/lUt05Pi1GNY5FR2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653044399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2bw9TrXkjztGriNDw05SG/5wb9XXvh4Yn8kVz1DxiHY=;
	b=Njvv4Fd/GihQIVcakEr2+WLD8IhBhCD6AzhzEURbaGeCAg1DJUiXFf5q/Na7r/Jv
	mEK41QX2I49kl2hBDXkGr4vrXLHiNsJMktiw1uhelCxmkCegYxMt7w5/fjxcSiAMt1H
	Q8n2wpC7nQyCuEf3myvbCZsdlAWE35miLe6UdF+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e11fcca5-cd446053-a83a-4630-a333-a1e87ed742b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff5158d5bfc4e6cf09d40b155e02cbeab418333e50971a33771c000ae144af2b
Date: Fri, 20 May 2022 10:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653044399
