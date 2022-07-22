Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1844D15A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 06:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658471212;
	h=To:Subject:From:Message-Id:Date;
	bh=sWcglz1k7mmshwcTRE6QG+K1XrPz8z2XAS+dztd1Kvc=;
	b=aXMMbJ9WFwhLw6JLckeKkgngpgo33Aa6CWlhoNdHhbbIkD5G3y5UgT3/4jPkBtpr
	S+VB+F+Gd6J8S5UgXO8fh3eLH1IkWYLT4V47rgt6iHxScsCHm+vS1Gt6E/5s261Rqgu
	p1j8hd4HezFgT0sLr5zBZAPEPyYDA7I0M9VsDXKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658471212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sWcglz1k7mmshwcTRE6QG+K1XrPz8z2XAS+dztd1Kvc=;
	b=P5HOn3EaAxWIMMIuo18rPwc15crzRfY1UBnE13Q1JGa6BYKd/1CWAWCzG9Z1BRs1
	Ioggt7CFj3U7+BXq2E93c528t/JoA3LgAme7rEYNA2DcI2e/ZxQmNKU1tuPn0vBJWTu
	dfMKFgj7V2dLZNQU6JqvPy/Wkp0fMGjO9lms7ifM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018224966520-9ec4754e-cf13-4469-be1b-e8b0a5e8a94c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 958e3f2a62e37ec90359260200b45e9892cc839302b6c7217eb128e3cf431433
Date: Fri, 22 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658471212
