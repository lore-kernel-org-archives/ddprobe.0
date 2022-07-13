Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D583C22
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657720612;
	h=To:Subject:From:Message-Id:Date;
	bh=yOTBdIk7lh7Am42AOCWqVbHXHU3jyO7yHg4pRqdqEss=;
	b=JfTDqW4jFTh6cOLAEnejg+fY0Oi7TTPMfsm64qFD/GXS7cDyJy2JByTf3S2BtJJr
	C1Yuw+7w114AWeKgSmiOf4Q6z1VEFU0PAe+BMqtbCzsAkB7FQ6445I9JULb3Fw1oGhP
	baFOVAvGIJ3lXuRy03elGY3p698jFxoZ9+77TByI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657720612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yOTBdIk7lh7Am42AOCWqVbHXHU3jyO7yHg4pRqdqEss=;
	b=UGGJJzlbBNeiEaW/S/DbA8uh4kbG+xiR15MtQqItYdI3T9iWaCZoGhUffm56zCZ+
	Fq9xj89f1N/KggtTLn9zc+frQUGhKNm67nGtbn+Ks9txHjd8Il5VSSCp2A3nWAlDMN6
	jOIBtBZ88toL/2MkflsGAtjVvknIP/FpkaI1NKCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f7d925cf-83ebc84d-1f4a-4887-9911-ed308bf69949-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0fe4678ca350681e447b4990112e18e6dd9a203d7a6af63822cd39539c86176a
Date: Wed, 13 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657720612
