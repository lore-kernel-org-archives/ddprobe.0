Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3458256C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661181053;
	h=To:Subject:From:Message-Id:Date;
	bh=VMWCSj2+okMK34pP8vhSvOMOaP9kLRX5WU/OPNFGzxw=;
	b=Y85ckf5stX71cHv6cHUWwJCe8jXo0I+0h1rmZmdJtaHI2Imy6k4s3or9WJHLCCpD
	jh3wRymBdQvjqrVieMGuyCxxuBh7axszooEsM9scI9JqxecL3WptQk46muBl9NNmHFh
	R0oN5/MLfunxf205xbXO7ZGI8Wxlbf1b1Cwd/LR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661181053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VMWCSj2+okMK34pP8vhSvOMOaP9kLRX5WU/OPNFGzxw=;
	b=TtmTnR003MA37wSL4RrxTEzD6I55qXm5mcIPplFKiuMYCORize8BDRLKvaW5jadY
	3ksjxrcV4CnJaEYwaviKsHW76DEONZ4D6PYWZZ0SDRqJVH1ufdqfuzsrkXSy+pff0lG
	ZyXyvjbHUS8EUsTkpeozsmpd590a3AFEVwXU00Ng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c61b468e-45eb6840-7b7a-4c6c-bbd3-f475d1201732-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fa2309b3fd00a7757993cc03d12181e7c7e4b0dc8257b8b797df18eb35bd1cd
Date: Mon, 22 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661181052
