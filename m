Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172093D8E
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 22:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653431159;
	h=To:Subject:From:Message-Id:Date;
	bh=cbZckpm9Q5wKui+fKtXeBsvPtpGf947NZJKu8R7yDXE=;
	b=lZGiLB7KHZtA6DiVszQDIYqroZgojo34/kI00zO4iwTWzBhfbd4kYZzJ4ApqlZYm
	Aj2wMRWxr7osC9+uQSrNOCxqgMhkusiQTlmH2ZlcTal0EMlsK+jz/taoGlK9KjiFz9y
	zSfWiy8Md+3RngZXz/poIfjMJA51mB3LufRvxWeE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653431159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cbZckpm9Q5wKui+fKtXeBsvPtpGf947NZJKu8R7yDXE=;
	b=OpzGDlAekqBL7tJDf/ApXPmPSzBVQP8qftQdu5020/XODVyWxWGp2SIlAjCrAZaq
	TnskMP0fYsCZPAqxxg6zjFGWX0aOmDJV7QpT8X/J02YWJJ2D+tHPccixuch+vrjNMk0
	RfJdRT5lPZ7QcAy/1xk4JVzLsXqJSbvPxvpt5Vfc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f82d4a16-417877c5-6617-4693-95fc-71fe840ef635-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48aba4ab3578692fa063e5764bf91db17e2674805e47797d7b8562a997003cf6
Date: Tue, 24 May 2022 22:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653431159
