Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD8D29A4
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645535484;
	h=To:Subject:From:Message-Id:Date;
	bh=Uo1+6Q+f/nwSd4AuzhBg86eqqHrHVleRAaXhfplgyJ0=;
	b=DYf6Xhb0WwuCTTB2H6cIsILrCtpHOr4Ps1NZEUo4Il8EHm1/ZQGxqkVtjmoYttjA
	HAtI6PYGbvXWEtgWDrc2Ovvw3ZUOW0PPzjQaNAKi1kXvXDQGYTDBRx8QEAbo8RSb4UX
	ql9ooUeZGWpGr9ZlVIyo0NrVfwIMA3LLkG04WKbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645535484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uo1+6Q+f/nwSd4AuzhBg86eqqHrHVleRAaXhfplgyJ0=;
	b=Xx0tj8OfFBKMcntBqWjDCzaUst6XXIJQ202t9CeZiSJGJjD6A1aXtvuf/fYOl6tS
	5lZqowPHAei54USihfPC+TAWcHhLeeqV6r4wuaySFm2OuxRwY9igJAU5dmPeQ+NkL7x
	Sw11129g3R2y8tRaiRH6Y/Mv2/bTfAc9lZALX+0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f218edb48-ce4d7faf-97d9-43c7-9950-171974735d79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbdc46607c3433bab109a17c8c8c826cad90817f17e72ab8dfa9b62f001dff81
Date: Tue, 22 Feb 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645535484
