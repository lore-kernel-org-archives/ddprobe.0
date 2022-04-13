Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F72828EE
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 11:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649850838;
	h=To:Subject:From:Message-Id:Date;
	bh=/dKR2q0Xl0uXFsMf5rPAfYi9CPsRlGxnVu6/Yyknlm0=;
	b=mP7rU9OwNzW/pAplQrOO52ceyUmTgOoaf1rR1R+ayFK5FbbWYuU3hf8i7qWFULPC
	5SyQqtXu9gpnF56EkmOZFs5wVLiVBlKtcbG48fBWoin75tLBdqZyQq7wlAqvutnJ0FC
	s0l5w4rQI9QSv5SXBUdcX9omjPYtpa261hJlAPZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649850838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/dKR2q0Xl0uXFsMf5rPAfYi9CPsRlGxnVu6/Yyknlm0=;
	b=S1yDYg0eo3RLzsWUU56u3WDpdCHE1FCdgSLrSQs7UYRZoaUjjf5pPvPw2kbqZQKF
	U5TXeukCDlOSWhBcCEFiveJqgnIKRRuKs6z48leYRbP2y0rwqrU9J9Dfib+ZTMK3k/p
	hs1PjWGFct4Cl333uDhy1HHTz0l7BsBrHVJuhI68=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018022c5ed2d-6b469fd4-a72c-4554-8dfe-fda2615cb0ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d04d487be54f9eb0a64e6fa492c143078545b07f886b10e81080be7d8f5cb01b
Date: Wed, 13 Apr 2022 11:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649850838
