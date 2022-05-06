Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1618F3D7B
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 22:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651875178;
	h=To:Subject:From:Message-Id:Date;
	bh=SqqzNfaOfa7rJdO4cTxtdTKpzIguBkhbpsb57ywc438=;
	b=JS7SkH00CpZ1f1qWXrt5EQkNQL19IYSwnqoV7rbqMNqisMDQyi++xZBk57N3DLpV
	OvDf65La03LRO5beT/ixPODFJulT8nX6OJDGP5HF6XGKbJFy7j3sRUTGLctytiPR4Gn
	AWvDd+Ghudxlu1k5zhMDv3JYJ6jeG+ZMAi/5+qFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651875178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SqqzNfaOfa7rJdO4cTxtdTKpzIguBkhbpsb57ywc438=;
	b=kcsAOrFygQzDyvV4XpnF0bkYKKLO5EIrUzYLKkN+C0IZmjDHe27W2Aj084zIoO5w
	Y3hmKgjw0XQjY3xFqBUXc2etZ+Uj6cAqqB4rOfJ5m9cj1AwSsWN8jYuNSTge3Y4E/8j
	WPbU+pcdiLIPVV+A9xhTlQVPGzTZyNstg58i1bV0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809b6ee72d-8a4d7352-2550-4889-b317-5c04aa027a57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c3edc80cb8bb263c7c274047a76d9bdad308f56a751d9ca3186f078917f3dcd
Date: Fri, 6 May 2022 22:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651875178
