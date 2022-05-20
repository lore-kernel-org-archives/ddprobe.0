Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4737A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 13:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653051839;
	h=To:Subject:From:Message-Id:Date;
	bh=Mu0cKvkXQ6ReEFQNiyGyaYsHpN6jQV74P1LmdCiBY9k=;
	b=VQ98/1Z9XP/3EHjqiPRBGqLDBE6HYeDMKQaoP9hJkBegIdZjE/o/8zp5UWZA1/qQ
	1bUEDXNyG8ac1QZFKtniLwleBajdbEgQ0HgBPmIkPwGLd54yAhFMVNKkec5aToloMRB
	W3bv3Yk1TT7+oZfEzObiAdKMoajRXfBmDeM5UiYg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653051839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mu0cKvkXQ6ReEFQNiyGyaYsHpN6jQV74P1LmdCiBY9k=;
	b=UhkdHVTmj5lwCY7fjIQDbX2haQxKKMz4RwyT4DHFxjJnBMdcgmx1JJBrAMi1YFrQ
	645xDNL5Hra9LNq7m9BhmTPLex+liXlBNXCSpQu9TVqMkSDLkSynn5q/3RmjdIXTa9J
	FC1hYBC8FemEOZ+Wuaoj965Sm2/H9QhofhM2NOK0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e1915303-78196589-1c28-4f77-b86b-c925b10328fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cf82dc05a034a70c28c2d4e403652c429acc3c12b1cfd622e21be3bba17a509
Date: Fri, 20 May 2022 13:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653051839
