Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AAA92590
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 19:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650135838;
	h=To:Subject:From:Message-Id:Date;
	bh=oxhHCcXiJ9rKayGfP/DEzzWf3ZFr1NMFEkdIKoQo/XE=;
	b=XrigoUqNOLUDLgOTmN2LICmULTvQVOp8xHnBYSTf8VQRawf/h+9AG+UrXZqPwOvo
	FsxSPJf8odgZeLr3v7QOAFBG+EFFfHhVt2/vAHWYUmdP2JkgqNAmMgy1eSY7kuczUNn
	OjwCh8CRyq2Th/mFN9OdjqQIFneh27kKTTpesZ/c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650135838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oxhHCcXiJ9rKayGfP/DEzzWf3ZFr1NMFEkdIKoQo/XE=;
	b=bZxunEB/qwFlXAQjoyMc+uTtsq80TwIlicbRiqfzcFLNroHVtXuITph/qSoit9nt
	olCYyVO+LYr+BgoaALACcqiyE1bfGk5O7cRMl+Yzg3zcPrSA6cMJnpGwvW2BumMlLaJ
	WFLS+XQXPrwVWuTY1i7H+5qif2jb1f7hHz727+RU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018033c2ae58-f17c5931-9a05-4bd5-9707-a56374db5c31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e45147c271efeab66ab23ee2950a6c86e955ddd9edf3587ce0aaba2df0570b26
Date: Sat, 16 Apr 2022 19:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650135838
