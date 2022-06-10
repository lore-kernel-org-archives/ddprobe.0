Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F927C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 15:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654876259;
	h=To:Subject:From:Message-Id:Date;
	bh=2uvvC02ISW47TSGxA5dmPUpohX88K/ifjigBpHFIm80=;
	b=CSzfRuT87+0KMVgpvPp9/+Z4YnFKFuYqq7BNOLVNbWfXtmaaxeeLWYG9vONB6kDM
	BDwMUfLL4CYrzRxu48cc34kArJt5DxWFo0f5PyOJGF4l0f/iBK6/5YR8gOENOxUoAwm
	xBqQ7+mnVqln9aI8masz9fxJzMf8RNq/dDJTdj0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654876259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2uvvC02ISW47TSGxA5dmPUpohX88K/ifjigBpHFIm80=;
	b=VqdEZXX0FOQyKekLmue17A/Mv+kDJpqAHdRsl3SepF1T5T2cB2x65pSUiGdUZlU1
	U+ebaphAKpR4NTNiByD+1EbaimqNOdrlsnnW9qJRDJx6YDa9myGwrqqS5zd5edueYQN
	YKaHt174dc2h8iQ+G3VdQNxCeR7Tqt9q+6LRpqYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e4fc3c0-8e15d9ed-54f4-4e95-aa20-5bc414076a12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cfc058bb6032e6cc3abec34f6df2bf6c0710354ce56c9454ec0aff7f624a92e
Date: Fri, 10 Jun 2022 15:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654876259
