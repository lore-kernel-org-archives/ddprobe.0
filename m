Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540B37E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660528252;
	h=To:Subject:From:Message-Id:Date;
	bh=1q/Ho43GCwCuErA/BYnH3vCuWdu8zMsZtPefDw0bHPg=;
	b=Vt3YFqW2mtnVBiRUQdDZeR9A0Rrl1RisuJ58lk6J5fS4vGQN60MuyVPviuVtsln1
	4/otLZFaaw9TfFIHjAQ3Yl+HUUYrckNSovuz7jN/IU13N808Vqtri03+vAR9ns12PqQ
	vcHsgQdqQsFLB1UVQJcoTWqSad8XoOMybr+pn8OE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660528252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1q/Ho43GCwCuErA/BYnH3vCuWdu8zMsZtPefDw0bHPg=;
	b=O0QyxGS12yuSHz/DHbaf6/5XeF7kyEqJgHULZM92C0mk5YVZOBpHvj6sh0tLV91L
	nCF1egDBXgdDBOUkWcmA3t6pTx2bRkgt5Um/hQ1lKaBYFDg7WECD8ilS+OVwIXr+MU9
	bRLTtS+z4IQkihO9zpeOQyvz2JrALaDwWAjKYPOw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829f3256b8-f1385926-13c9-485c-b073-4dc9f0878318-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a4eff7188bda92d7955840fbb1cf16ac9b63e54d09104c8fad3fb1c07dbc521
Date: Mon, 15 Aug 2022 01:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660528252
