Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A2E7A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647660084;
	h=To:Subject:From:Message-Id:Date;
	bh=0zOz5+LJ7ySFGHeHPpm0IQPflXxq/vMaFnxGGv2Nhfc=;
	b=Mfzg1N5ouOkEiaoNFxIkrj9JOaqU5g5UC0ntwz9qyR9syjwNGrUqaX+cm6agNYJ9
	pBDrnvldevUAISzwfA00MbHyBiShyUKbstT76yFg8z1QFtWyDlN0ekp6XU3U6+A8G8C
	qoedfzJNWmdrDKvN/Qg1aPdR2F1ROcB+kOH6vArk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647660084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0zOz5+LJ7ySFGHeHPpm0IQPflXxq/vMaFnxGGv2Nhfc=;
	b=MBB7+JJpfk+uOXDzVq3TZejCRvaIPNv+RS4yKzHyUHNtdOT9UGJLUlxBy4DzBb52
	0ktNs4mwd7pAchrLGqOpoknpjw40lycytCdF3/fi9a3iFhfh25O/hkwqXnOghk78h/Y
	ASzMOCmeK+GatTZou6D93TBGO/v0qvxAA707XJLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa031adfa-264c85ca-14a7-4a47-921d-5219c04d65c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d33cd90a51f7e220ac60b737acedd5bb6e8114639bfb541ffe194626f1ee131
Date: Sat, 19 Mar 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647660084
