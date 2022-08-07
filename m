Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93CDA3D60
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659903052;
	h=To:Subject:From:Message-Id:Date;
	bh=90/NqRPrXgOiHlImwYWDq7FOXMIDdhUdH7e6zvG14xM=;
	b=HhZU2EyRumUkzOmWlyPSuR6GJw5WlIz9NlczndqurjIHqmzUtTFg0y60nnYaUFfa
	A7xavhj2o/KdkP4xJE3c0kugZzZ+EhfSGyONAsy3gQDguKdpxYddZ8jxIllGIdwnRdH
	k/wXoYiFSfsbN1zVV7r870GmucSo7UubKOvSS7z8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659903052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=90/NqRPrXgOiHlImwYWDq7FOXMIDdhUdH7e6zvG14xM=;
	b=kCI1zgVyA4jxnUzqnn2BspxKWTYdGlYisJtUoi0btSS7Ehkp7FjTxXsrqkmJp6AK
	PC9wLqsE6y7GEnNQ3kf//lAhtiJxh195ZsFWfpq9DEMSZ47wrE+pIOp/PI9Ipy8wWpa
	zGZCvKYU1DxKiX5dR9Eq/QttdDC553uzvpskF98M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018279ee8b37-c405725e-1ea3-47dc-bf18-86195951cced-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 393a2befe0af1c3637cc6b405d8f4e1acfae05e76a43c3ad1c830c32ebb4afa8
Date: Sun, 7 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659903052
