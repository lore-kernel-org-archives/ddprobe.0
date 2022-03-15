Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B478E1B75
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647328285;
	h=To:Subject:From:Message-Id:Date;
	bh=KhgvED5Jg3OMTB+qMwaePFtFTECBeK1j6uC94OO9udM=;
	b=QBL5cQ4/voxYeSzgOZQwhSFTNGnNA4CrjzLMrZ/7vYIpGkX9U3cX+rlNwCHUZEim
	+YRy04R3RMiXaiF69gDPX1Ql2qZtq7SG/N9kOJP7Xs1kZiQ8V4cbl0a1zp0XK/X1DmU
	uB0hCp7q/1qtJN7NnLXY/ojDpn+Kngh52ckcMxeM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647328285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KhgvED5Jg3OMTB+qMwaePFtFTECBeK1j6uC94OO9udM=;
	b=TcOIrmniW1pAgboXL7GJQtlr+RirdmWeZlcTwj8M/kZVP+/YFuAeyGRchoIboaBy
	pDfRhsYNbUSvCeXyLgG0XKbiwniFrniPSSRl63Zja4dLunqudgf8G6vSS1h6JvOgOQ2
	4xgCFjVGY/7G4sPuc0l33mK/nhLkru/FTg+qo9Xc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c6ad07d-fbf09c7c-9ce7-4784-9023-422bd90049df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7429f07ef6c843f54fd4b65f74cfc7fbcab984a86ef56676e60cf41b403d319d
Date: Tue, 15 Mar 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647328284
