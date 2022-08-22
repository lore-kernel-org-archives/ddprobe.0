Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3617A4C63
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661205652;
	h=To:Subject:From:Message-Id:Date;
	bh=yF86UUZA3HGKyx9qG1ZDNcmRCvXtGMlx3aMNgi3oR1w=;
	b=XU+D2ZDl94lt0lo52k31swFWEh9l0bDXpj+aVjjEpBXyIoKJaDFIS72C2DoUDdwC
	zl+OZ59gfCQfpdgwJxIn8UQoOHNdn7Galhuq465TVO/s1tzWf0IbkF2pkh8yGRoxXEs
	chVgETEW5bKGOiISYJ8Vc/NQp/sOUnr3N6cUaiNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661205652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yF86UUZA3HGKyx9qG1ZDNcmRCvXtGMlx3aMNgi3oR1w=;
	b=DqLSUSidRR0ZLqKOJvS1wh409cw+egW7s9QH97usS8DpjHLnvusb7w91szbGexv4
	qeCfq/rm9wBhvX2bMtir4HiajufJbIJn3wtn764H3/E4LsXBqqke28sHqp0w11ZCWlI
	LB9Gg1QJ6HZhdJbxKA3EBd2swE9lqQoVP13ipEuI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c792a44d-898a3012-a6a8-40b0-a26f-06314c1d21d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6a74429c021c050a2656c912814cbdab96fc52549ca0cd8e4e7546288f15d73
Date: Mon, 22 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661205652
