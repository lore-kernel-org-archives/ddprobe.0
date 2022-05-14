Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049A9624
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 12:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652531339;
	h=To:Subject:From:Message-Id:Date;
	bh=udGE5i1STLSOI5BEQwukKNgP1EU5oVN6yMjz4syiYO4=;
	b=BUbCwEpQJs2Qgowl0LnghpB3Jx85qspP733n3KhgqZ2yU49zd1NrhYVOHosWijpb
	uDgIsC4WdUHFFRnCOOoTqy2bllOgMXB48vYLPgCXrYZLsnKDuuCJGvuRVC2IHT23D/2
	MIpNpEKmkgbLUeOgVAVxvn20odsCjWiRQ5RPM6D8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652531339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=udGE5i1STLSOI5BEQwukKNgP1EU5oVN6yMjz4syiYO4=;
	b=T2JPCWHfmkxCm814NzePjxmm8Zd4Ab2owCSR0gmHF3wLcaXFlMZXIvM1J2jD9IIu
	LFJv1oPat82ReMMpszGJfINWZ8SrjBIgSjE36362VbQKP2Wm5vLTPEYAKnbB24n6UEC
	Vcz/Hml5+gMasb51Usrm4ZCH98FqxxC622vgicns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c28b200d-473b6a98-afb8-4a4a-a304-751f891aa774-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec3c086cba62ad40ea113a4995250192362cac3b6e17721343c73d7a6ec0fb06
Date: Sat, 14 May 2022 12:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652531339
