Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC25180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647687084;
	h=To:Subject:From:Message-Id:Date;
	bh=R9FIRTBYUY0+c4QEgoCnAOcM5K2tcNTCeZcOnvLKiIg=;
	b=RZFU1ghLWbgfvUiC1cpi7ed6lepQExXSiYbfX/ENrkW+AZlEY5HxywEsPk//l7Uo
	C6Ia+c3e0D/9rGt9DPyRfseGfMwCcC3Z6RgQGRPuxrViLHcNogIMYp5d1h/k6j+6tND
	VWQaxhxK03KjT5kyoYC/P52xMFLqpEXWuafwOGSc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647687084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R9FIRTBYUY0+c4QEgoCnAOcM5K2tcNTCeZcOnvLKiIg=;
	b=deJTb26GwCDcgMFY+oGFehWo9uLhBrrH/wedE95W/4jsF5scNEKzuW6fsPmaGLCT
	P34GeOY+OXaU6bNeQJ9T5/NB21NeaSXt6Qw7V1JXl9RwanJZGNVlSxa7GkLWI8crwQ5
	fhHiarZsqxTp8dyXLWuHnk0SbuWZISdPAP076f9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1cdaacf-1093580d-d730-4f17-8163-a0e2641d737c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 482cd7dbf2c5ea2f283ff6baa26164f20b9cbbe5cb7f8765101e983edf838232
Date: Sat, 19 Mar 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647687084
