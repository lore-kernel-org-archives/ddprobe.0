Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E30A29
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 18:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650306419;
	h=To:Subject:From:Message-Id:Date;
	bh=VH/7DdjdMjT1wZSNalKvHF4LcwjnzuVBnOGuWapPemU=;
	b=MYi70qmFWBvk8Poc4lXxZ6k2+56BiMLkCykOXCOamotND4pfXFsQD5W8SJs/x9yc
	+PRaZspGX2Xi71QQrlXW71S1je+vfFGHbtYzoOwoceCv1danb1uDPkcqgFOCurny2c9
	i96c9tDKWcFkiCYik22r4XoZB5M2ZCEPYhMVhv1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650306419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VH/7DdjdMjT1wZSNalKvHF4LcwjnzuVBnOGuWapPemU=;
	b=VyUwLKzR9D1r6DjI+NpxOaXpr2YTMIo/dsfYHOqusxTxJvrmW11G1h0cpI37hx5k
	7CNnaGtXiMnZt5aF4NF8VAx2eGzybyEz0Gxd8gU+/lYrSmNhyJ2YekWI/pwuagnw4Wo
	iLhOIol/aUBmFl9gtq5YNNEC4Yrr6932gPhhO7eg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803ded86c0-b7fa676f-3376-4b7e-b0de-4c4794c44216-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44b49c9141a5124461937e93af8b713ac8887c05b5361c3e704966c895e481b3
Date: Mon, 18 Apr 2022 18:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650306418
