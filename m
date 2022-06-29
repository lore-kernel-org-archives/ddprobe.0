Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F537B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 00:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656463012;
	h=To:Subject:From:Message-Id:Date;
	bh=UCcxjcm03P5trN9WnmOmA868zOSjcM69bplIwJDyGb8=;
	b=X+KrT1QmWwUIqIUQykbeNuj9o+hpQenfUgKr7s/+G3Lqn9Y6Rs36LyVrF5NQTHh3
	jk3R2Vi51a8/iSNZo9cVvCqbUgeGpAPjj/rckigBRJFHCZ49bI0ElXtO/ALjO3xOrD7
	KcteHDkR/+dECBUqjYVOkhuUfQhOAbdyqX9QQNUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656463012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UCcxjcm03P5trN9WnmOmA868zOSjcM69bplIwJDyGb8=;
	b=YRPW7o0+viU8ncnr5lcKrGYa950MgQRTq9iPGbdoTxjEuR0uQK/EDYF9fzQGYaYz
	Qv/GnLTHE+qhNZETEF7t0TLh/FXONBDMaaykGzWwigcBpGL3mlmAjZwOtGYjZwVXxy8
	YiVfEphFnko5QyJyb4ePL8z1FCl67J4wHUOMrXTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ace3b1f7-2fa6397a-79d7-4208-a86e-4515c648a970-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2dd53110ffc31f5375178d06de70e2e7eb793cf04ee85f52339f33fc36d0b10
Date: Wed, 29 Jun 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656463012
