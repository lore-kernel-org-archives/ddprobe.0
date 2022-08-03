Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D744A11
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659561652;
	h=To:Subject:From:Message-Id:Date;
	bh=k60c9+r70xjoJieuTEmtGvh2a++iy/nmfEid9bOynBE=;
	b=bqemKUTNFQZtOHn3nPLPxWxT15hT7bJCrXYV0NRHvKzfFBxfvr12YWOaVL0MB5q8
	i5xVejZ9eSC6rAelwIohtNI8TRKTLlhgIAoXdAu9cutn+OtZjRcPXOZ0m6tefOvyVkw
	mEvLNalH06UNrqO7YRskTfUUv3uwc6aOkT3qYGHk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659561652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k60c9+r70xjoJieuTEmtGvh2a++iy/nmfEid9bOynBE=;
	b=GmaNWhujKe1eed7gjWSUNPdAs0ugghoOQ++65RpgdLfrXN2D+ADZkaUS1EYEUPzo
	l3pQy+nzSUV9zLgATfm1V2G+uOR8TOI45DGPFM+WRNCLmT1WTdpJz8ed72zI3+yQUU9
	0zb2XcAJ0x5IRp/4I+hz0PA5sQbZgVV4u3mVzGCo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018265953153-2c01ad92-ef1d-4832-82db-07c404b1ff9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a924f7d4a812260790470ab5b7ff95e59ffb9667fef99764122abf90973e39d
Date: Wed, 3 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659561652
