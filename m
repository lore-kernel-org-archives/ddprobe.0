Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E507C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 11:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650801118;
	h=To:Subject:From:Message-Id:Date;
	bh=DE+RP249vPjzvCSXPgB7QqUgACAg/RovOZAOe39LRzo=;
	b=IAxm9u+qSPfSSVOsQGvxlzSAXcRx9w+cUSV/1dGV0pkGbvdNfAaqsA3IYOh336aL
	/TwcrXMHd+yKnZ85dxR4M30LqyWt7ikxi2Fvc/ajN6OoPii03XoRphf81/WmzVRsUQ3
	ZfM2/pkp9ipC1KtSQamBctlRdACBOzUimPY+kIIo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650801118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DE+RP249vPjzvCSXPgB7QqUgACAg/RovOZAOe39LRzo=;
	b=gnadYxLhDcaifeNYPmzGIQ3jQfBV57U2CClUqx4w8/emPI7BlWYuHqOKQrKSCeoA
	I18GXy2BZRTJ1kfEHfLjLtwDeuHFzOFY5fDfdw1qzRNLzzGjYyEPpSAIncjN9X9b6gS
	/If9aqt/wBFfGwXNLg1BKzMeyAbig9O8zOxG1FDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b6a0c27-dad0f2aa-700a-4e38-af09-f423daa86cab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50021870edc3b412dbc85f164675b116c709ea24aff63516d98bf077e8cf82e5
Date: Sun, 24 Apr 2022 11:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650801118
