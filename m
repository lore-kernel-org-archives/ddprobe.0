Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3AAA47
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 20:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649535958;
	h=To:Subject:From:Message-Id:Date;
	bh=ND5qvARZs4+3X31CL5xn6PMPd3qR6LW6gO9SmaSJ5UY=;
	b=I0RsRIo8igWfJZllg4vzSwY2IY/YWMLdU0txPG7oWOdL+nCA45PnYzwIwpYZTfwd
	0sqsbyeJ9h7c0D9VfJGLLAJrYm+PT9tKenPZy0+lMfO3vkD/VdCLaTLG0UJU+V98hYo
	/bWOBq9sOyNNHk5PBs1zB93eMhMAMUokKd3kI7OA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649535958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ND5qvARZs4+3X31CL5xn6PMPd3qR6LW6gO9SmaSJ5UY=;
	b=H/h3Q2rsUEdS29waGSAf1X/yk90d2PHSrqCEhUtN2CpcZ+4I+AAG9Px2Fh/CKlHQ
	pD3t9dpFT9gW+arpVs8CnlYyC5vl9zAO8xI6w2rHXtdyzqXyNDsm3InUyLsfRh9zmUp
	VJZLylNoxsJWUM2KMT1246X0fSt+U/nyjZ90vbKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018010013d23-42d182cf-9f72-4e33-ad5a-bd2d73ada19b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f83bb73040a2632d85641f1ec12dc1be44f35e6cfb2b37f8162c5d8f980418b9
Date: Sat, 9 Apr 2022 20:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649535958
