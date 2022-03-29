Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B43120E5
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 02:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648520158;
	h=To:Subject:From:Message-Id:Date;
	bh=MrDPZD5eFauglWxpC4zII3sQb/SbfDefO3RXGI1skMg=;
	b=RXxRofU0U4MBoIyXCK1EvPTJv88g9fuqQBiTu9HL49JTLbevghri0fwwJsCFcW/j
	3ZLBej0o5Ezp/rrL49FooSnle+QjWyCPVboM43qcQFiZFGkBGls1jT7GAZbkYP2uMGk
	YID20U0EoVzQJR3YskH/2h1M1+nl1V1Dt5CBG4QQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648520158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MrDPZD5eFauglWxpC4zII3sQb/SbfDefO3RXGI1skMg=;
	b=gi9FDeuCMkCaP4ghKDFdF+QE+vUQ+vspge/S0VoLqc7YTXu5LcCuh/i5mNTii0y6
	GUDXnsErcR6ANO3HANmOOoGq2VTFnt9stis8ICT1+3xLqidBAQFZVZNbRWoRzSCMYKq
	6mgWy1dchgFQXLQHbKb7sq65POA/89PP9IcO2EXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd3755c4e-7ff2299b-b4fc-4565-a697-dc1cd04eda58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e45cc4aba33538c87b481fb6b38fe6a3188f7290a89e4dd774bc1449a86e462
Date: Tue, 29 Mar 2022 02:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648520158
