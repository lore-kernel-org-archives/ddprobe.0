Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A8333E4
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 23:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653955139;
	h=To:Subject:From:Message-Id:Date;
	bh=2Ms10XUDZ2fzlMxrLXHm0m8C0w30cvqujL/wLwMPuR0=;
	b=PSNcJpblbCTsSGnJ1lmySoZ9mHUZRiWkTmjoYjJvO/XJ0GkzVAyjrCnfGpYjKN9N
	KGjnIbnJs/9u9UmaMA9OkyThbVdYHDzpOkxz6uJaZznp+ZYzq2zQZ3BswZ7NXpo5s9Q
	Jxp12Kn7lFPSQ4QFsUNuLvzf0V69HmKaJX6pwouY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653955139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Ms10XUDZ2fzlMxrLXHm0m8C0w30cvqujL/wLwMPuR0=;
	b=FufG/JaV+rFG62HkDeiZPWkXqevU1CaD7WbgLyXA1sbKesqL6EA2rw3bgwQp1Z40
	4ZPNr1nLCFtGlRyyWAIFJvgHnqWU+GLpcJSeSTlY/27sJjwNWgJX6FTZ+Iyxi3muQZj
	hGzTZIQlwRaMTZKXtkfp4ovBj+GmhULjSO7XiKfQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018117689724-88dea579-6251-4c0d-ac6f-48f78b2fa21b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cff3f98a13bdc6081cec70d1e271759faaba8eb9b305a955e905f8e011dd13df
Date: Mon, 30 May 2022 23:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653955139
