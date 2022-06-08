Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7707B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 23:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654729379;
	h=To:Subject:From:Message-Id:Date;
	bh=bCb+d1exs9djttb3bRnBb1ePQLFEZz3oeDckZh2WRi0=;
	b=NwoRX1Nlj+H5QTRyKYBlt/XBYvHclflBKgHZwMBSfqSpuJAPjOOkM+RYlvlk9qnH
	qle+Rd5uIkr8uGjfWQzF6bxmOebcVlSHD+Vi4ng6b3+godsGmiCrjqelzL58NSb5Xmq
	2gO1moSBO5lmgbgAvFt1IHcdpGyxpnVwQLWgq+EE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654729379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bCb+d1exs9djttb3bRnBb1ePQLFEZz3oeDckZh2WRi0=;
	b=UUNREeQIL1t/Oy2fyQLrcueXPbtX4EdknEZxmScXOyoilqWaNliPhIs9xTfo2T1D
	RcRuxFW78FQ6WwyrFj49nV0P12v7Eh1Lc/Q1B0ptQL/53U6g2PlysdPw+HvdgN3vd88
	qNQayjdZVy4aAndYwOCUrVxfAzlKRH3vIcmQo63g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181458e8dac-9528ffbd-e047-4208-95c7-c88b80aa6013-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e3f8a865a2584899e3ac92cfc573663bbdde444fa52d0419b4c478a72fdb9fe
Date: Wed, 8 Jun 2022 23:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654729379
