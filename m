Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56DB1FA7
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 03:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658289412;
	h=To:Subject:From:Message-Id:Date;
	bh=EJ2ba7XxCqte9LloZmd016C+V12m6sVSJodyUuQMnK8=;
	b=jIUktnw1JsZtBUJv1qLyBhTmz4uHNMdSDX4GEAa9NL/Uvv1GlsJdU3KbFPGbin82
	+8e7OmYFXn+4ghxwevgo2Em6v0wP/yGdRloJEDwDleYzb4opt9SkZ3Lx1RV6gsLGa/V
	mOoXkW/fzizr81uHTnpF/6OgnjKewNU9l+1xhxIs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658289412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EJ2ba7XxCqte9LloZmd016C+V12m6sVSJodyUuQMnK8=;
	b=fWj3qo1ZTiIhNH7ZUNTbYnkY03t0XOkkAa/phecdDmzrhmzP1Gw1QS71pOOYEF/e
	sHOAKQuefP7RxoqbzrxxPkIHrunY59I9Br2E2A3rSJH9TY3yZAc1CmwfEITh47eQ6hD
	kSyjDlNsnSY/KpaTLUKZNH4nJ2rfVJbRmD8QcREI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018219c058ac-333c76ac-7ad0-40bb-8512-430f1d5d08a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f40a475f5586a5134850a08f22019f27795f59d535e1a8cd88f9642ddf16855
Date: Wed, 20 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658289412
