Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828C3627
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 01:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644801608;
	h=To:Subject:From:Message-Id:Date;
	bh=WeK1b6mRlomfqN6Sb9WvcMzsS+TtRFQVpa8tFNH1JNw=;
	b=agxM9gHp6FnTlu5O4xD9H1lSqmd7UBoPTsqqQBbWEBM8lQ5VhoVXYJ5Hmu4ZMQUv
	3pc52vTBdqMFjHutz31AnC9GA+W0iBKbYKJZ5ksnUAohA9HaynR9IapqUT6he1SA/Iq
	BHmjjEsld3zPVYShdCLLf6WzceLWWDTVnp8clua8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644801608;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WeK1b6mRlomfqN6Sb9WvcMzsS+TtRFQVpa8tFNH1JNw=;
	b=gYtw6dIByVrZbHpnzNXNKT46cg62C84d9Zx7nmO7xCyCKDf1qhDeSw2JeinBoysB
	QIK2AERffTjQBSLCiSLeT40N8lOVqekylAeO7fH7GVthlPIf/s9ev3e4cq8VVS3/rYu
	77hv7d328DkVkMflRmEYL/IeTgQZEAlJpm+GC4mo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef5d0cc20-2a878180-ddd7-42fd-8af9-54ac260836f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6669f2c3ab368a21b4e1dc50321e67c1e71603eb54e4b33cb6544a146d49c107
Date: Mon, 14 Feb 2022 01:20:08 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644801608
