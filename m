Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297FD7B
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 08:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649925478;
	h=To:Subject:From:Message-Id:Date;
	bh=XRn2ZvOMWK0TxNIkkh+WQgTcuwpF/5p4Xanh6dS4Y3o=;
	b=bLwR7/6xxUh1VEZsqFt+2VSmFdgLkOQbNEmDzFws2amFeKRk8tFf18yR+6Bs/ppA
	uqMJqbnhVl/x0n4AplxkOq6+fsVITUCCp85/guxCY8NCHr/GTlJakyx6LVutGIqDJUc
	f26fr5YQxtdZbn5rOOh0Ri8nYbQFeAwjuYY75Oqs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649925478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XRn2ZvOMWK0TxNIkkh+WQgTcuwpF/5p4Xanh6dS4Y3o=;
	b=czLMiQbXtoc8hv+C6GdIS+NZ80XmrX3WrLazkwyrCQ78krSF/YZ2Owd1Mgh/vj/8
	Mh6L22B/4453vLwNvvxq8RbBXDULZPSVGYinWaD0DNSFkIHgodNauOdwfe+ZWj/hKyE
	bu2OxNMFskW4Gl+n7bRzPDdHMIoXEoLixkudH6mg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802738d78e-fc0bc9d1-eb88-4223-849c-3563da4fd662-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e545f717e1761990e477e3d2d7e270e6273940b081a4d5af11e192d26ffc91c1
Date: Thu, 14 Apr 2022 08:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649925478
