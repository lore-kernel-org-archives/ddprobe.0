Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D062F21
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 23:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655248559;
	h=To:Subject:From:Message-Id:Date;
	bh=JVn5CFuiuy9TfevoQJ7sC6NaR9FdsOSlPjhVgxZkKlg=;
	b=Q32Lab0Pngw7kkWmKlALsWnsxUkgnYpH4YXx8XFlZlMy+kIF99vWVYyxEBFxaaLC
	rv93otDYcHGG2pBT6kmBROed7ZOhQV6vEiEswgEYOKpPIdISZPNGfv+xx5kPRZEGDa4
	wMA+psQRqMGfYpI0w7vyK6HdrjUt5bPBHxwjjozo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655248559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JVn5CFuiuy9TfevoQJ7sC6NaR9FdsOSlPjhVgxZkKlg=;
	b=P24oOwTR57IigQa6FxBO0+nirNpW1WJ0tJo8CwFaLBwtp72y2l8uVH7PmdildabK
	aQvXBISmi9aqo1yYJ+7J8bl9xejQR1IN8oGdo3B0TBmPFJmj+UT/tPUGNh1NNzp3fdX
	8U3sxmytImXdhd/NP1GsDdbUI2wtqqKkEvfh7A9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018164809c89-c1ee02da-6382-4977-9eb6-86e4ff4f6497-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ce7c7c0c0636985087cf8c9e198690aee3bf2a6e172ad7c49c6b0574883fa88
Date: Tue, 14 Jun 2022 23:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655248559
