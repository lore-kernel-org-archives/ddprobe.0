Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BA4811
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 13:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651843918;
	h=To:Subject:From:Message-Id:Date;
	bh=bYUvmv0u4jbkG8lKep7ZXwzp9SIiVLUvfOZbABfF5Sc=;
	b=Soko55Seb0IIxqLCX6SPSFZObDlGJZAydLp66hcap5xcI9Vjc9X06T64kfA05xat
	0AvgfJEwnfgNNbvIC1hiW26W87Np5nnxyQdHtPHSDboVkCZIn8g9a0qLUlqrjQJIRBM
	PRloIIUVQggi6jJeG9zqJXpX8B+GLb397tfpbp/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651843918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bYUvmv0u4jbkG8lKep7ZXwzp9SIiVLUvfOZbABfF5Sc=;
	b=KU09Z52wUSRRShAN8x8AYDQgJ4WhyiTeUXShgJC5mjJ8O/BKfyS2OjHInowtSOJ9
	RsNztLL82zKhHZITm7ZUGVKtgN9vTAaRKyUSptsXfcBNuomP4oKHbweHGyYg5l/a6Ta
	/tnRk9sNE0ZD5kAqc5qmkITtqw1vv//Heret3KYs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809991e9ef-b24c15dc-a3c4-47a4-87c6-2837975400df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df486fdbb852deff5212f53eef79e8e0268f5a01335ebef5b02b971526b3b072
Date: Fri, 6 May 2022 13:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651843918
