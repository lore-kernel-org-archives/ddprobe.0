Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AF233D7
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 13:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652449079;
	h=To:Subject:From:Message-Id:Date;
	bh=tQxJqQBrqiunfhbMGRFG+zfvIFhw2gmtWYiq8OLdySs=;
	b=MIq/BOeZpmmp076yC9xgQEcdSDLnenSFC48swKQCfI2jU6q/veW3czbiOMfB0mhv
	sUQXegrkZypM4p6k7NkTgmJPgWxZUwTOff4lmlLTg4kFkQ+20W/57KtDQaF0dYYK9kp
	vUdDcWI1ORxXh4VnnBfrZ9u55ZwB+IxEgL64jOQI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652449079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tQxJqQBrqiunfhbMGRFG+zfvIFhw2gmtWYiq8OLdySs=;
	b=I01b23D7pFTOiQ+sv40lCDaMj9B3qXIOFKib3PCjT88lpDAjxDya/rmNxxH9qeVi
	hIH0cSC2r9eo1VoCID4o8XHdl+HSIeePfxHost4Kqp0Zs4oaSDIArCTwE204E6WIOBJ
	gJZW03hp/u+9qnuI4kNFXav4KPc9A1q6tx4PTXr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bda3efe6-4bbcc32c-c3e2-478f-afc1-530647937f8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3c14ed71cd68728e4a0bf30e86d31d907a6c6baf130f8aca321bd1f0e9b8bb6
Date: Fri, 13 May 2022 13:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652449079
