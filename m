Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127937C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 00:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648426498;
	h=To:Subject:From:Message-Id:Date;
	bh=13hK1+vT0Cp8lzQ+8VxGvGkOYtJ4dxNsP8EBA6lOt40=;
	b=Ca6Vl4SnPRRZR1AraijNzq6bxvq7WOTxhJ8QPkQEOoj/SQLLSuFOr+6ThcQ9+Qq8
	ACJxMxSGCNrPTVG0oJoq0HoFGbDE7cVqNbLKh/icPM3JxaL/GgEBRqXCM3DiOUiSAAh
	9A5p3lH+sOAyzAxMtG22uWxDpqgOxej+w1llYRvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648426498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=13hK1+vT0Cp8lzQ+8VxGvGkOYtJ4dxNsP8EBA6lOt40=;
	b=NsZwJsTOG8AK03a8MotNt+y5S4V2csu6XoAo6m0NhMsvvPAE0p7HrOHwIQN0Ca5m
	qxcFPmORvoGW7gdftKQAm7pJYL87V3iHqfJzjINboo4B9GIrWWbcD1BfBGHNK5qcxmR
	0jTcFmsVU0i8cGFYaV1C4CIAc3jNJ4aQED4w6ggU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcde038fe-f82d0654-0fc6-4976-ab3c-67c3f1d2692e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f82e2ffe08583822615e75f4da2f1455118a2ffa2f1b97b9b60b91d1d7195dee
Date: Mon, 28 Mar 2022 00:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648426498
