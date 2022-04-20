Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1945B185B
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 16:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650471058;
	h=To:Subject:From:Message-Id:Date;
	bh=mlrUNwEqp2AGtQsALUza95qcSDLFIcem3Bn8me8OjiQ=;
	b=kwK+lgCZ8TVQQIRV3m7XWumJORPoV1lIOKBX6xYVq1rnlmZ8iTMab5KWlcNmLcgY
	oKZXCWQQnhxcwx6qlqliDyp/amkyLU9P+Saxz8mfFLgmyB6L8dT1fDwdYe4jXEIKIUa
	j3wq9LwSS5rzLCUpT89+9Hl2/U8XY0kgzCytg4c0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650471058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mlrUNwEqp2AGtQsALUza95qcSDLFIcem3Bn8me8OjiQ=;
	b=Xt9td1nFtI6IWxNmkl0N2ako6wUS6kxWjP7esAr8BJNTYOuuceJZF+plBrwqPfLQ
	C60owUTk5V+4Abb244pHXVYchCZb+kARdhoCHl4gdFX9br8fofXruxevK4EzVsl8n7P
	uU+kTAUhPXNKAabsjSJh7De2/tlzRnJ6xPdOzTwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018047bdbb76-136bdbde-6828-49a3-9635-52aef1d2817b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 505af5bfcc7f1a3b80f6f65ac69df2e88506a5cb1e0ea90789c5b56957435f00
Date: Wed, 20 Apr 2022 16:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650471058
