Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFE44420
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 16:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657558612;
	h=To:Subject:From:Message-Id:Date;
	bh=VDgsXuagKOYCncSe90pAE+v/o4Oft9lO8RL3lZufHWg=;
	b=N+ILRsPsko6Daw75zeCyngFw1LnObAoPSMalbu9VUD5F4nXJfhSwM34NDqug4y6E
	NddnAqEqX7Idl8qoR15ugXvie5pQ8KGsT7Pn0KkbvLbodgYE5fTA16hfQyrqrOyMmab
	rdaJsD1dnjbHZwOEegOMMZvdQkWI9cE6oJ0mSYUU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657558612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VDgsXuagKOYCncSe90pAE+v/o4Oft9lO8RL3lZufHWg=;
	b=FH2OO5SCvns7137FMAKDWD1b0i3QQ9foO0z/PzHZZThMrhpEQ4vGl9h6T9a3xRpe
	BHWEfdbn/l2c8MuZMzGo72HYdRIg4AuZaqdvOcs9GtPY2aeef4XvjHLixVrA6MR8DZS
	/0mtP+a7afMMb+iTj7WTCDEr1vIPS7EwcZ3+zUXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee313997-cb14e258-1042-46d9-820e-c2b3d9e02e57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d9254c817fa64ea7a381f23830aca58451d66fc4be41926b923ad2c258a7a4d
Date: Mon, 11 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657558612
