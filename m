Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747A936B
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 00:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650242518;
	h=To:Subject:From:Message-Id:Date;
	bh=KtjLNuLwSM+32QqN6Wk3f9q+qOo0xXtzVUByis9gQuA=;
	b=Plfetg3UB7N/2BOa07iSK9M/00oQWdLP9vQ3p5iAqf5MN0+E0dfoLqXxQSz4LN3d
	FQs7OVzPw5Vr+ZDWhq1gTa2JudZgbQPnpB1pjar26BxaeiyLSSUdDiN2/6Bd60iSWLV
	1HcXmgrkD2np3RtpWd3NAdWOqR1++UtN/L4udiEo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650242518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KtjLNuLwSM+32QqN6Wk3f9q+qOo0xXtzVUByis9gQuA=;
	b=QsKBu2sLC//pA3ZL35INyu0XV+zxBn9uVSzJ+b1wTFEo1Oc78VLOTwqbzeOWOORE
	D7qs09KzVoMdwCVyk35CXkIlp6DXJ0YbsQabBtzrDh4/B+A4QlPjJMhIkbiAqXfH1zM
	29yPz8fuuzBY1qrjZIKBR20rQTc+vWDV2LQOX00o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803a1e7cfe-9a83a3b6-04ba-47c0-bec9-0870197dd895-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84b3b1f6f97869e8fd2356425134b11da9413269952300f55a21ec20f5fba6f7
Date: Mon, 18 Apr 2022 00:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650242518
