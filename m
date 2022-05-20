Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B017E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 16:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653064019;
	h=To:Subject:From:Message-Id:Date;
	bh=UiUimUk2XBYG48IZGlEoj6i4NmTwiNvEtHnJyP/+DGU=;
	b=ZwFfAQZVCf7/cirLI8JsKf2kT2UlpWk0HOB/ok9Zf77Rl6xYOyWhig9QGue97t2A
	dUD7yzmPicV3MpqOQN3dzkfod+KkF+iaQu2LwkGsf+gf3XutlSgclFfxearddPutaCF
	dqFiBQJlY0ufWceBtzBlsewPFV3IwpBC53ZlKYqs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653064019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UiUimUk2XBYG48IZGlEoj6i4NmTwiNvEtHnJyP/+DGU=;
	b=HpUYdadh3TWaCCqY7DZhhr/4W6FqfwqEJ9nFWLoen5ky/hJjNIqLPOWC3WKLRfiM
	xyN7gK/tsdFdu74rnObxEbLZ9eT6kUOd+dbyYr2hgir7VDQ/xymycEAcgJ1lMxo0uXT
	EN3TxRuWPUUPYhEFeJZnI5aQl8cgFG99EZ7a3KZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e24b2d60-272858f5-cb38-415d-8c2a-3fabcdabe8c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00cfe0c81ed8a81062e8caa921cf00e551647686c3fcceb30a47067bbcbf43ab
Date: Fri, 20 May 2022 16:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653064019
