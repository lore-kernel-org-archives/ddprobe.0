Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31BA3B21
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645878385;
	h=To:Subject:From:Message-Id:Date;
	bh=VcZWOGdbO1zr+mqn8DzHxXELGj4AmB2TyGvJZyGVUFU=;
	b=KMPemS8iiSr3MUaqyZPLilbcIDtH4CGYxVJeB3xprAmU1gANu2jLJEPRLAiouIuP
	nho5J+6DajCpOnd1+MT873/b7c+LS3ZAIVHSzkSfLahQHRbKozwGZ+f1uUzpk8NG3L0
	ggHR7x/gbOBlE9uqJTXpRUddAdajAics68zPwgjs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645878385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VcZWOGdbO1zr+mqn8DzHxXELGj4AmB2TyGvJZyGVUFU=;
	b=FS1Yy5G7HfsvvUg0rEPdyKP+vnx7YU621fd/cezLfeD9gD7JX1ujzDEzY2wgEFzQ
	MiuBT3iQkxt04maSWcYzdVEXNq7CJfUkCcxbiQRxW/otQF4Bt13Lu9IdWPVqlvx5bXF
	a+z9p85EzktyQitr0zNqNrE15mqt6kzAzWhx6nU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35ff18c6-5e3e979d-5bba-48c9-93b6-bc04adfffa8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0076b6ff39263d7d5b5ad9665db85989dbed3a033749ef4274828b080aad342a
Date: Sat, 26 Feb 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645878384
