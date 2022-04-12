Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074C47B
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 08:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649753998;
	h=To:Subject:From:Message-Id:Date;
	bh=4H+qVF3rkhVyXbT+Uf6FWcTzFvGKgyTN7i7SmD864GY=;
	b=gzsvYo1AFSfyHgbeQ8kZTHmP68JjqDFOSbTchhwU6tq9hQm4aYk08Z5ayOTDE55N
	a6YqfpgYJH+a9unWZDbcwnqFTTpSybZCkyrAB77nDuMf6iMkpJazj/aJ7uA3qVS0U6b
	Lztv4/MhTPapMH+9jFlCjViDi0iyGGtJ5wn4B2h0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649753998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4H+qVF3rkhVyXbT+Uf6FWcTzFvGKgyTN7i7SmD864GY=;
	b=CNDXbrW5Ghnq2c7lRvcJQb29J1WenKYfgMuVpLzhsXXL47PwDw7DydBwD7VGldLy
	FMgAAQIqvmESvvqu9Z3PIXqffL0upy4T/YdVUMTwoWnA9tpgfpcwF6i7UxTUCyLqG0U
	ODmRAvD7tXZXm87xSnrA1NIzgQlE57teYEiAsxPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801d0043dc-7ef603df-0c21-42b7-bb66-732eb65d2011-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3ec14031ce55086de8c9f5f4130d3d162f620c772226bcce7e15c76800eba5d
Date: Tue, 12 Apr 2022 08:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649753998
