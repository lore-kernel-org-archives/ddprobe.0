Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701C3A3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658898652;
	h=To:Subject:From:Message-Id:Date;
	bh=O5EFNZzjYG3OIj4NgM0l5v7Ytq3Z3QnhDdb0vmQf1FA=;
	b=chB1Yr2/G2Xo4O3C3f91HeonCni8md0LcK83eVUXOOPGDkfxHNZprpjUwwGmMZn0
	uzDfVlDWdGPi+NAQbhgyAgrQ9zM6ucLu+EQhvmJ6t1N33UJTLhr3y7n010+VbMAg7hF
	ufiaEQzc8lswvZm4pZcYkuptP+VE1UJ5f/rTwI9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658898652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O5EFNZzjYG3OIj4NgM0l5v7Ytq3Z3QnhDdb0vmQf1FA=;
	b=H9hpTIVgf8oTbtxxtFB2bqiDEMYi7PSkxdikmVbbyRMy9SuAPDXYBsuhphDL/hmw
	AfySgod9vOBkyv6OcliZ8WhzKyi24C9usoW79Kkyfzn0bRKoMyVsb6nSthRjGlzhK5B
	h4HgKvpdI0mh7bjuJRD6mKf0sY0EhSGBHj2esm+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823e109d9f-e9440300-f858-487a-907e-2cb21d598cd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19b5c45cad74f266a273106bfed1a4280e19605497e54a88fc7bdf0c70fca8e9
Date: Wed, 27 Jul 2022 05:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658898652
