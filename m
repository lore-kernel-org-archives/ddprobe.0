Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6E41852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 12:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651321858;
	h=To:Subject:From:Message-Id:Date;
	bh=02VThG6exqrxpdL8fMCU3CLZEVcJu6NsM06YJzcT5ac=;
	b=FFtwydtc3MqtZgYG4T/TrEdEHwhAjF2kpT/IjDCyG0RJt4zLrOI0UGzPGRBTcujc
	/drZUnHR3jqs8nEMqP9PlWJWEbLDr/GhWaiQWN24zZB0uyDQsQihYE1KrEA6znL9qo6
	6f5IefTMBTxroujTr8520nG3HtbCNjFK4zjyjrPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651321858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=02VThG6exqrxpdL8fMCU3CLZEVcJu6NsM06YJzcT5ac=;
	b=iHwikOhh5U77Cvf5RyigOOZ9fMTeR9MAPhqE8xUQyYwfndtPI58sje5nb0oOZPll
	WjLxPUbdE+QMuqU+almz9a0fgF78VpPXG0+9wbVPi0l9+TjV+sfS2NY8S5WgWZMy0RP
	Q32F7NOkZEC+XLds4U3QPPXHIqA6TxMsEYrLgShg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807a73e903-ef5ce927-2266-42cc-81aa-9e38173cb3ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17a7ee210cc9dfa23f71112660d6ee3728518d9dc0282395b807c24b88c2530d
Date: Sat, 30 Apr 2022 12:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651321858
