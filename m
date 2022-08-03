Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A411364
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659532852;
	h=To:Subject:From:Message-Id:Date;
	bh=3cFgMnrWEMzbG+fusBbo9ViTil77QMFe2/ECguDqBPc=;
	b=JYKL6DCNVb7cvANUfTb5dVsYeHcNCuhv+J+j3Zk68mMWqLKAYctKW7x6SuU72RC4
	KUqfPpGx7z8UiYPX48CIZy/YCTdguEeX6EIoLDMIsknDdCwVFgEUw8es20mIzLT8nxJ
	YWHP3J7/5GKuoNDqFGG0kzE+jOhky8zyvw95zeqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659532852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3cFgMnrWEMzbG+fusBbo9ViTil77QMFe2/ECguDqBPc=;
	b=OFz9XXAuOc2dONE30rTQBrPcU049Bd0paZgaJlIp7qiMnX38Ec45SgK/Aig04Bmh
	dlJTVsCJlhEZN53npCV+E/vvyIu/tOfhJ1PAuPPlbnAGofK17fcGMDxTWcOJXC6iYRC
	82ZcyDxzUJ0mGN+vqXIARXYkUGEMC6rf71CKXY+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018263ddbd84-24877e44-0820-48f1-a48e-88b4429d2def-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9483d70811acbf2f5627708af81df6694266da3f954e77ff8a73e024e9ca086
Date: Wed, 3 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659532852
