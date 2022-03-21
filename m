Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59942F24
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647856585;
	h=To:Subject:From:Message-Id:Date;
	bh=83cEQQJs6sSwopbw8iZoTfg9kDUOheRoZjrSYqUlCK8=;
	b=G55MbCZrbVmJdacm9MhzWwUze8AxbqsgqFJivNcmjNxV3SwKyNfVKgjOlIvrtnSu
	Pjwf4I3Foe+Qh1zegkNHxXK7q3QoijT0d1D1BG7w9zweaRe4FxKGyld7N8IWzUVzyeS
	ngVj4vnR3z4ojkB7qi36kYsZBpnWNPYJQR0FTom8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647856585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=83cEQQJs6sSwopbw8iZoTfg9kDUOheRoZjrSYqUlCK8=;
	b=HEA7DN3GjzKVh6gbWnd/r56FOnfbIxwJSHfDPuSLr6Wm3lF5odbQPJaR7c9lNrlK
	wqcqE5RychumpWZbzdLuNJrl4DlWvT9Ijem0trm3te4n4qwfmQJyoURqt6UniasQuzC
	GqBLiaUSDSDzv0nX1HhyZ95mjVDp3Mxh7eRGsVe4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fabe80880-fedc2344-d165-4a79-9139-a088ea1223e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc2e3c94c701d3184ba6ee21a01b00ba55de2c68092bcba46f09ef3e4f2cdb75
Date: Mon, 21 Mar 2022 09:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647856584
