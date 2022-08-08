Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637BA7C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659964252;
	h=To:Subject:From:Message-Id:Date;
	bh=tJ5jyGbewPwiz55kMEsFc8DiWk3kZioDkkHmbGtJui4=;
	b=Oe7hjgdsE3FbJHEHPM6ymHD3Mqja0W3mLqM++zLLAfbS7r9E4jirwIEFH/3lx029
	NBeAlLifRyZ0YcZvGOJgqV930qqHBX4sAE4fZV5EDynYagjlB9VC5K2D+9aJDN58vaA
	9dmP5Sm6MQUMwIn247SjOgFLKgxx38DTwQrbfPYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659964252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tJ5jyGbewPwiz55kMEsFc8DiWk3kZioDkkHmbGtJui4=;
	b=bQ1R3jNrdbuAWxVCGiyd/wAKVrcUmybtG0xGGa9gPx1BBsOw8rScZLT/pT5rPTm0
	DVO1ClR8l2Y7l/RIkgzZuvFMwYcto2m+FFYrEsYuWv9Oy50uZ/JbTT9uVirLbc9+Zcw
	3q99svDzzBFKJ5TxaUvTodXtNSPlYFydndJDs8BE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827d946197-77ed7c94-388b-41f4-b33d-55458fe51774-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b873284c448f7a3736399239d0a79e524d0385a781cf36e627b8a13847d09377
Date: Mon, 8 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659964252
