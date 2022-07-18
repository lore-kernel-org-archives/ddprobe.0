Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF88A46
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658124412;
	h=To:Subject:From:Message-Id:Date;
	bh=+5br94iDEbyyVbP8JK64JLGsnCAgIgXG+fZ+JLkTuZs=;
	b=FAX58cG5/c/sha5/IvkjH48fvJdfCEHzIsUYznPs+u1FOukvrx46tdXcYseD4Lpr
	EUXXqB72uvn3NVZ6I2Uhv9+rnmZNXbBUEe4aoTfengL4PLnsFB6cNALZVyhgnK00iGZ
	Mvy7Foun3pxOAua+tbX95haBuifVLeIISHalCkvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658124412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+5br94iDEbyyVbP8JK64JLGsnCAgIgXG+fZ+JLkTuZs=;
	b=OMnshEO4+5scdLqDuiM2mXboctFw90tX8W1U3cmiXif8KjyP1NOxIMCQ9LxH/ltM
	1bdvLOdE+42phhO+A8wVl4W3pTtlg8xZGDuh03YXaE4DJMSeBSPYYmjrGlp1921xMw1
	hGT6ruAOjsKh7GgLJxI7VMUmF1Y+fHp6JoZA0pgg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820feaa579-d41057e0-ca7f-4196-a4d7-9a6fd9207831-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04941208a66f3546c10decd774aff99edb1039420b12476d1955c25c7c4db652
Date: Mon, 18 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658124412
