Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F318C7C
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 19:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648927138;
	h=To:Subject:From:Message-Id:Date;
	bh=j4dI3u19Y1OD+86T4jkDoPF8WTGDS6K6+pB9ZUZaBTw=;
	b=HvyWkUnuhcQwJzU5brmMACMzskv2mh0op0mZ7Zsl9XI5hEO5R1m0c4g4QUUMKCu8
	CSpKOz7GX+rIl5WJuS2XRkIVNIpyHyTH+d31uPLqJmxP6ef5rN0oNAJ5d9DAxxfMPZf
	J/nbMsy89WpEzkgMqePzVTjCaV3oqCtm9nzRIZPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648927138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j4dI3u19Y1OD+86T4jkDoPF8WTGDS6K6+pB9ZUZaBTw=;
	b=elfFHIGHTclstuSpT/hGaxhi9t1h/27f1Z/leGtXh8uPE4YeniQvM0sbzPh022b4
	J/tBleeJ3uTASEmVuZmWY6fWNZ9mn465OYBk7tV4bkWE7HRVpLwjQ56svSaUsmKhr6A
	CVNeY+BXQbW+Ihp46Z1OP9y7NICreDEQ1tP6l1FU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017febb761dc-5c0b6f3d-da3a-4559-8c8f-eff1e8c415e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34ae2e6cf316fef8e7b2afc5eb7dac25d0677b79fcac4ac027c5bd671cc2c1b9
Date: Sat, 2 Apr 2022 19:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648927137
