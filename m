Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131174C75
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 21:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658266612;
	h=To:Subject:From:Message-Id:Date;
	bh=rwPlu7X6FspeqAaoFXqkxZ4cKt3Hs65bBm/9qVadB5o=;
	b=NhU82/6pFH/ZWCAKmMH+WLVKGdkvN6CxBsNcpxVO8bIGo//cBAjvD8q4Vop5nbye
	/llr3f5kqinNZ2zPxGYo5z7b0Besgr4Xa/Qc3zipxkrFkKcFP8dy8C67nkZw9zw5XWz
	HEYSqBPzP6xmeg/+Arf4rq0VkMxGUXIp/GsmU9rM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658266612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rwPlu7X6FspeqAaoFXqkxZ4cKt3Hs65bBm/9qVadB5o=;
	b=exRCCtK51dk2l1W/tx9uhpSu/V4mmJmNcRPQUZ/AzsnwMBmFRolWdeap1a15A5gC
	kSntSpXx1dSZ3Q3nm7O/+feUMvve7244vVWThC5Xdg8qXsapgEGSpYK2ZceiElrfoJl
	i0P+7148GckriNOHTLp1RErMYi2jgesEAbrI7aWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018218647254-131b6f93-3018-4f91-99c7-c4959d337cd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06e07ff4c98a90edc0282f5e698dcf013f3501da962742aead523554eb17c9ae
Date: Tue, 19 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658266612
