Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152E87A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 12:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650715678;
	h=To:Subject:From:Message-Id:Date;
	bh=2zPVJ1Dvb1WOmxSzy+0zx4SWl7Y0Sck28VQcMFRTu0Q=;
	b=B63qO6YgkT4ANNKpzEiRREQDSq23K+e1aEEzKiiSUUbVdbQxg2cwexlrLxp357UK
	WsFZFBJFa+T8A3qNZPwgg7WFbxZrm5ltXMItly0nRcqp4Lbbz09uxG8WIPJFbi93I86
	0RZ521712AafMpPLO16dHI6hkGKrvcP0xTc9GYgA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650715678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2zPVJ1Dvb1WOmxSzy+0zx4SWl7Y0Sck28VQcMFRTu0Q=;
	b=eI1UTqBPc2DV8Op0W/2PzovMe+9QFOuRmHgDJ/Lnk5OxTLEMkXFIGbAJ8RRyQQcS
	AGh3VnycktneivEV15lMBPFjRLtatS/iKUItI3ErPHVRTkd+jFPsBXWpfANnsOw71Qf
	aDx0zIjlSZt3xZPkqIwLxWC7BpixfKjpS0te4Zjo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805652565d-aa2e94a1-4dbd-4eb7-ae19-117fc3a9a5c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fad19dce35d5520e0de1a7ab38e67cda56abb109918474975f0b56093b27c35b
Date: Sat, 23 Apr 2022 12:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650715678
