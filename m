Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1730E23B2
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 21:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649020678;
	h=To:Subject:From:Message-Id:Date;
	bh=W4OS7wB4WQAfhZPPHgqqFe2JyzPrURwG6lrQpCjRZYI=;
	b=kgxTZPG49bcNd3YWVqrjW9U+9npFn3CMfanUvLKOj1S00HagS4wYHk3bBrKH6eWx
	V3TRp3k/yXxghstTLALMj2fr6/R21V4Wn463YQPG/A5f5vK3HbQ0IIhjKGUPQrpfRnI
	9TM1jbCH7Z1w+t8QupHJgfTjt5rNeBrakIeAKaAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649020678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W4OS7wB4WQAfhZPPHgqqFe2JyzPrURwG6lrQpCjRZYI=;
	b=hs69XY1tF0QUiyKBPZiND5hLvwl7ebHm2IxbjS6qEU0Fk9EXNd4y5YeFvl09ZEh3
	T4SpayFgFpYUmCq3UJViD1ehBOBOjF7KfPxV6YKLY7ywX7ndu7idPqBKEebKkAW/j84
	WkCFTFZA3ytc/OtxKD1i6+yr4EeG5nqhBuiYakjY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff14ab0bf-77ea2ee3-ef3d-4020-ac43-b9c83464ee12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 832175a2ea4a4c747b5d60b425073779e5007a4f6a354d16782d617145dce366
Date: Sun, 3 Apr 2022 21:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649020678
