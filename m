Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A26F8362
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 08:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649406359;
	h=To:Subject:From:Message-Id:Date;
	bh=AgWj7w4MGO0tuDqmQcDsBUWN5z+YDWMkjkdcTpVfyBE=;
	b=Y/OW632Zl3J5JElgIEWH3KoFaPlSnvYlY04bFye3bqsAeYFik0NScHZqHGrDhATy
	eJaMnZchYPB8oEYTNndJIZsnfRGmVOKX82fOR0G9ljbtbs19i1zGSEDV3SIkx5GEt2i
	XM1uRml/vyk4nWMrt1TKC+PCr0hbITjik1vtEXlE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649406359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AgWj7w4MGO0tuDqmQcDsBUWN5z+YDWMkjkdcTpVfyBE=;
	b=GIklJJUWCMPjRLHU5J8nvRQyveaL0+rhXvwGrMrJGMFtSQZ3rnRuX+t1aHcZpqJC
	aUzMvOKBnxyxl+pCCRFzNLLtFjCJuT0C8FGRWSkLLHzDKE7btSsb/Ay1jCfdS8jh3Ms
	x3vBADY1dQ99xinEhykqVwEi/Rurv2TxVbjWSA18=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800847b308-c005347d-f773-463f-8171-9fd1b8b40ec7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be6903b39fa959c65710a4b2c83b7c99745f1e9d61bd0acd7d6fe184cb1d3d56
Date: Fri, 8 Apr 2022 08:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649406358
