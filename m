Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F427C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 16:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654966679;
	h=To:Subject:From:Message-Id:Date;
	bh=1YdLCpk2lx0aEXq9CmfIXOhjrrr41AvdWQtMDoyjY4o=;
	b=aN6uATBE0S2qAqu81t++3nO+BjEZMHcQL0FxJhrshJ8DgbJmqkEd1RMuZrW32smg
	aI0tq3ffJdGwg0hXxkGc3ls1I75AOcc4vFIb+T7XStBojTapw8zkLWYq0+uO3BOyo1J
	wu+cmADR3mdX4bcIGMhOy0/7j+kZUEE1t4giJB24=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654966679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1YdLCpk2lx0aEXq9CmfIXOhjrrr41AvdWQtMDoyjY4o=;
	b=QpGABDtVCh7JGKKo0iYjCP5oBls28pR5nzjDtXiwCwtDWHThWMjckrv41cb9Rpgi
	S0OPzLaxGim6/teSRxSpou/4heAPxt1AIHxEUZXV4VgHIK1oR7WarxFw3QMNYDBGpjP
	olXkXbRL3nV7NH76FY+R6ZUF1CyW+OGQpzY/rZkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018153b376d7-5537d113-58d0-4fc1-8661-0318ea184214-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 379cf08fb912408ce87dd68a91f804da22570319a444dc90031c370e4f8c56d2
Date: Sat, 11 Jun 2022 16:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654966679
