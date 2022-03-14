Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72FD36AB3
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647286584;
	h=To:Subject:From:Message-Id:Date;
	bh=TxtI6hD+3WQBrBUIzUlYZJk7a6EmmdjOGiHK9p9a7Bg=;
	b=looM8NYyKw+e3zjV5A831vGLrsNYJ33Y5cAEkWVVu8/cR3DMSdJjbcGYQxOCUZlu
	UDYN15Xwag26HksFyaV9SHtedJa9k4gxpsNMtN3zUpbvhw1zaRLkP8bDAzM5sJvY9MF
	fMuxzA3A4KjCiMUE6ptm5mshmj8XEkwj2+Fqj3tg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647286584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TxtI6hD+3WQBrBUIzUlYZJk7a6EmmdjOGiHK9p9a7Bg=;
	b=dG67dhrDEDp6pFx2hr0HfH1E+Qv3GOslYWvZ2bYVgTS5da+Ll/gmyf5boNsR6xG8
	C+O/rgCskk6yTa+h+5UGv1BPBRkBeIit0V41p/LAPxB2iQ8dUe9bmWZv3pUBZMmvSvZ
	nUifDLqn7okaRvsq0gvg2MufgllMnufVR/iTWkBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89ee85b0-445e0230-da92-4916-84e3-07c63da99a32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa8ab004a134499411d2722cd40baa958904d6db9d4e97dc6514287a456b25b1
Date: Mon, 14 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647286584
