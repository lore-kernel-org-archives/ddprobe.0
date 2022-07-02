Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181611FA8
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656791812;
	h=To:Subject:From:Message-Id:Date;
	bh=JX/BuG8z6790mVJasIL9h9iNQXL32+umxCQkcVY6FhQ=;
	b=F2KGrC+a15oPt1JE/FVsuZM39SQozK+UpYPaSIdpM7VJE/TAjoA09FZ/Tbi4dpX6
	Zu46iMNptWDrCzl1XlVgHwrmqB7/YTFZvOkQHAAPgH4KmvKOk4uQku8OWKzFd0cX3lD
	OkeObWEy/fPYRdWSdMbFiG+oPkieEjhu3FCwJ5NY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656791812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JX/BuG8z6790mVJasIL9h9iNQXL32+umxCQkcVY6FhQ=;
	b=RRhH1HwVhb2+rwZqxK9nS2qBGksJQL9Qu4XpcovXOgXvhj+CHY23/qL/Pn1fhdeJ
	qdttE2hvt3azw9PtzG3EZNdeO5L+VpZxeuLLZk6MfF/05Kt+nXRqgZpLlnkzpDqYdO/
	bSYB1oz47u9erXOQ2O/IMVprPBOjbP2oA+XcgDf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c07cc8d1-31b8e474-e6bb-4d5b-a88f-00b52faf4599-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0ff390d1679979fb0f5ec8d713a3f571cfe24480003eb6d4f657fc6937d2810
Date: Sat, 2 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656791812
