Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1B26001
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657042612;
	h=To:Subject:From:Message-Id:Date;
	bh=j5y0eCyZWWygexmchZdMqsjWtwhdeKV1nCtmCCaRLGA=;
	b=OkIoctEW9mwzYnTx4PR0+CX8sQy39Nn24wrpv3vmMfTQh4g/mzbl0jx5smQ8q2jf
	8Ieu+0Pe/tkxVU82DMyqkcaQfkxO7K+ZFBTR275zHgU0HmVdiWa1h9NxTSNQupsOS/8
	YK+8g66DaU7cz7AKTx/S5eqHmtQ+q+ce0jCYH+Hg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657042612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j5y0eCyZWWygexmchZdMqsjWtwhdeKV1nCtmCCaRLGA=;
	b=Cl8Q3is0joY0dVoVBp/BLhUm0AK5NKhikbHyJx4+Q5ZOlJNiUpZeYKq5Dy99qSLM
	x9vHaQIyZkXZCH3foKxXvFTGwCZSF6hCvpJiJwowFo2Rzek8zGVrIJGmonBjDJFrIZg
	epeXAc5KkBf0xZOnXj+HuyvsburJr279X766SCXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cf6fb05b-7d97316b-a89a-47d3-a0e4-30b6d543fa24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00c3e3583b74579a69b988a2480ce92ddc21ce857dc170853e7c4c9537a244ce
Date: Tue, 5 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657042612
