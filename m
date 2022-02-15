Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F04186C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644959785;
	h=To:Subject:From:Message-Id:Date;
	bh=HGfYC3EB0s/O22QBlXuoQWR2H0yhFPT6r3IYV6n2DK0=;
	b=Sm5kJY2VqR5Qe/3NtAa1Fk8A4ZJvAVlpUQz/U9FRLlsVU5Lo+QkF7Rk8ZOnPkMlN
	cCFGQY21X8Czuc9TJ4zh4OfkOMrt1LESwYjILRITiXx68pB+DUNENvo7VZyau+XC9DO
	HDTpN0XB9n6/uUQtmiC6oXCrDtDF6GiqMJWJLq8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644959785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HGfYC3EB0s/O22QBlXuoQWR2H0yhFPT6r3IYV6n2DK0=;
	b=INkkOv761ync1QheDtbOX5uFNE1DwfoPDFHVvf5EWYtXtN+gMQa2x01yOCN6v06J
	aHqTYtucadk3JkMWSLyTkID9Le+58BgEOvNtSFxCxPa0qyXodyT2Io4SCibbJVlgZLT
	tQNSuJETe5FajPTzjUxAo0qldylywBLGcP86DjLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff3e5f96-d45baf7c-82da-46ce-ba23-40c44569c1a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02adfe02e784868779f4cb6d72e9162f33ecedc85410aa95f23d8c8cf7cf32c6
Date: Tue, 15 Feb 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644959784
