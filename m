Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01C81848
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 20:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649709418;
	h=To:Subject:From:Message-Id:Date;
	bh=Zp+scq/rg9z460ykzvZsmTbFsSm9bdA2mgilPAVVvHk=;
	b=TOI+k9aLMWlzyrPl0jKt7qGWysUKeKW8DER6dn8B/hHn0o8KhvUwwlRw/vXxM/Zd
	TlZYh9zDOSB8hwyetGZE74uVbE0Xs8ZT3GLtDUrDrWf3+natPZ5oOk2Tj1d+F/ghrnw
	QY7oqZ5kGNwuZKoWjFlsSMezMwga0QB35sX9rpMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649709418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zp+scq/rg9z460ykzvZsmTbFsSm9bdA2mgilPAVVvHk=;
	b=avCgrrCp+CCPyqK5b033H2EY4lzoG4rUmlurURN7tV7CIOOPDDsHwOrPFNm68k7W
	FeBoKsEzOBUmFVWSqYcgjpAX70gZ/2k2F8oVzP1CFI+sq1sgpWyTddiv+ST2yH/Vuw7
	McpNEgkFP4JL5UH2ioDw0PJE40unNg+RpLP3HMaY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801a580717-171c33bb-2f04-482b-a703-76a0c0ccda0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9de4edc9dc431d20d2ff694371d66b41f65b551b6ef48ece9c12153deded9b4c
Date: Mon, 11 Apr 2022 20:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649709418
