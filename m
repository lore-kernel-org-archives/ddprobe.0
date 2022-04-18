Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B227E0
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 04:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650256738;
	h=To:Subject:From:Message-Id:Date;
	bh=5Jyg/hRtsWsoj9FUJVccbyUlrP7IDfoHJM7XfU99fxc=;
	b=Z2PlG2a8enbAOU+TMQ6foZ3cCB8fKZhMV/J58Bc10Y7npw27m4R/jDxgST1OBkdl
	hFLcBb2gFOXGJ8vYhpYpGVIBHKmxhC3UcNvx2NUf9PLdTQCAFN5qAXZ/Mf0yjTdesW4
	MxKiUbOPuf6YkVOmC+/LjIPNv04pr+oh41una7qE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650256738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Jyg/hRtsWsoj9FUJVccbyUlrP7IDfoHJM7XfU99fxc=;
	b=d1Vux0msnn3SzhKjmY+MInLyr9yUnWdKR6inN0dbxHfcNs+AoyhwwD6xi2/Waiik
	LsGc8KMqjB75AZ0jWIW2bcvdiNjx5ETTLBBccQZmgJWw8TKbqO5xZZx7PkeKP+Nc47Y
	HP9zrPZyziyBekqbRrxjRqIKSfgjNCEI3G9hZI88=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803af777de-3e7f4670-179e-467b-883a-9ff8831a0286-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 599a7b677dc80693da96384b8bd4d1a0cc9dadcb5a386b3cd97f8be325390bb4
Date: Mon, 18 Apr 2022 04:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650256738
