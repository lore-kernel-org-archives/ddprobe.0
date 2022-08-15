Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D47B7E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660584652;
	h=To:Subject:From:Message-Id:Date;
	bh=GOCC1pzfvS0osXYcIRBNvwGPkzTsVwMYPd+RonjYFoM=;
	b=hUI8j0Sg6Hxn15nJ++DspvmXQfVyj1e27W9nDSEbOW9fDYzQ5WSavKAPtbCgXH9o
	Wpm9qQSTo9QZrQG5MZq9q5wcyDHG2yrZAfV74TxjIR2TWhEAlYkXxaH8B6LbG29lXf5
	imTTAIquaDT5VT2GltJHPWZcxmjxHgFlZTV+DBpc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660584652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GOCC1pzfvS0osXYcIRBNvwGPkzTsVwMYPd+RonjYFoM=;
	b=ABGuamQANmtdxunlquZ8YUSPfjBJRRNnTc+y6uawO0wxBbiZna7m4/MhVRXX+M68
	Zzxrni9DXG4AVr7RkMOwj2q0xpK7KN0v3Ss/tDQzVo7MqfI+rLlKPnOYASMwJ/ssYkb
	PTRaSMLvUikKElxqN9HOQ7bmfI2Vj13jiVuckiu8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a28eef1c-47dc5f73-6bcc-4e05-9d90-aba216ab8823-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce19eb383cfcd39fec6a9662d9b007c2256ac1100ddfda201f1d7b24dfcaa3e5
Date: Mon, 15 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660584652
