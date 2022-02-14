Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD916C80
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644868585;
	h=To:Subject:From:Message-Id:Date;
	bh=O/RQI4WJvaenwjV198F4giMZjpWLFNdsmVq/U8Eb0Q4=;
	b=LS5RPEurffapZxeG8xlqzDtZuSuPhxU0iQ7U/Qxsn9YgG21hlWJeM5/SRof5mXen
	+kefln2TtZgrIFogSsCjI7nXtEeir5psHYVmdpBCT67xU6YS27BNpt4o886mZmiE9+O
	GWaNaT+CDpo+Hf6mxRYSl3pnCvf7l/nrjxMsgeh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644868585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O/RQI4WJvaenwjV198F4giMZjpWLFNdsmVq/U8Eb0Q4=;
	b=GwFgK13/OEysPMWLSVWY/dLTG3tqSWsQMg08inoCZi6pV7olGN6dBg6YelDcFQvQ
	cBuIYssAMBf4kRowoqOgDMUB0eQ38/ci0YiaqsYrQqDrcLub6omdyFY5mYMpDbm41+n
	MOEWNZTOaOdSO2ANR55dCLrfdJlXKMpFbZrWdDQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9cec561-639ecc19-9372-4bf2-acd2-fbac7f3e11e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12c588d4cfc28358190747ea6f2ddd14910329823fd11b5e9d1de1164a6fd226
Date: Mon, 14 Feb 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644868584
