Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3306F363
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 08:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651739038;
	h=To:Subject:From:Message-Id:Date;
	bh=7U0NPCtf0IzRjKE7BRtW7zpL4+M+1TfgH29AZuEnwRc=;
	b=clRvukidHbWYeicoAr0NCBjdwjQhsxgjXlonFx1E0BCAYRs1sJB+XoOR9aRH8b2A
	tvdIfRYSYe0foIebY2H4fnnfj6flowSMG31zMyJrM9OzRl6Tjh+I46AsKXk/6KggnDN
	qLGgMw/14V+3nr5UT9hY9ipOPirV740qGEEg4WjY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651739038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7U0NPCtf0IzRjKE7BRtW7zpL4+M+1TfgH29AZuEnwRc=;
	b=N8BlgFgJDAeoGr98PP/Hqbh+eOPPj5KQCS2wWrz9uW/Qj0M0yLVoWNN9JdLkbouf
	Gxfjn8sZyoOMf1YkHCD7PGjzKnFdgYVqtshCqi9WpM0B9ge3dcW88tidNsJylSSBRvL
	nbCc/nEBCwqHCRD+lKn9Vu/z3wFfZh41r+SYDXFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018093519263-64a37891-a14e-440c-a52d-ae0b4a5ee289-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ab4ede8098e9cb14b62c5f4d980ceff6b2baa808f919e0f4337e99dd1d82427
Date: Thu, 5 May 2022 08:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651739038
