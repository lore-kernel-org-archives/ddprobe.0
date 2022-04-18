Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FCB80F
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 12:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650286138;
	h=To:Subject:From:Message-Id:Date;
	bh=Yqep3XoSqLLS88GoOcIvoJ89D2wdnQr83PcVZEYZDnA=;
	b=OrGvg9XtywlRf4iIPRGUqjuAauMwsXFpl5IGHRkNAiSemO/t3G/rGvEuvvU9qCPf
	X4G92kO4zBEfbaLVZKsCiCltQg50wZLPXZGvwsdwr/O/xIHnSj1AAfIq8Mj4Ytz970S
	Pb3yoFc6qWz21p+ME4r1y8yzxyRGlGElw8v7GXHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650286138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yqep3XoSqLLS88GoOcIvoJ89D2wdnQr83PcVZEYZDnA=;
	b=kBJWW0JViVFVyG9r/q+7H3Cgbe200c2BgwdO+eNLSSKQn+Vgi9BSi/o0L42cBio5
	7e1XY5TEHmdd/srX8zodjVB4Iax6QnKh9LJURcViyiJ5cNoB7g14oPq09pYTmLEGSkO
	3h78DGXMKQvOGKyrpfUOR7gw2jqNOuAjV0+DY0Nk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803cb813a9-d71c36f2-8a72-4c46-bedc-662531ef7c40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b759708a7b89adbeba078d90b2feca6ff303cd2d3dd6d802b158f3e03d6e1d86
Date: Mon, 18 Apr 2022 12:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650286138
