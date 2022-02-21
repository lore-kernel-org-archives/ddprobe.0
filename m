Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88BC2581
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645445185;
	h=To:Subject:From:Message-Id:Date;
	bh=U+5iprgeh8F/geRI3N6dq6AMCjXq3X9YafBZMY9ZR6U=;
	b=bG2MB9ZHVzPPiHIKpDIxOUJ5k2CgI827w8wMVll42MrkTMgF+kY0zn/TVQ82t5lO
	96/GFfMpgIgJMwWVjiDCtFUKEN/J3uhDpAoC06N90U1aRdVSnTmnfX3jnV120pvyxea
	0EM20hjvRzBxKl3fCKjhNsm+EnRh6AfMNe4/HHBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645445185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U+5iprgeh8F/geRI3N6dq6AMCjXq3X9YafBZMY9ZR6U=;
	b=c85kxuiW5HckSFGqMTyjU4qNTNydCT8R01vIdm0rXYCwg4D/F/RWyUcFiQOfg9hO
	msnEPHO0+t1TK5w//TzRGGoUfnX7lXWJJSj99C3+Ad6P03uJApUq4bFd/8t4uufin8G
	YfgxqQ6kl3DcG/VNPsPXkDJr3ccUKt7yACX9nDyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c2cfd1c-bd712851-c286-41cf-873f-2e72d3d78ee8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f5fbe54710606f579f422361a222fc64bf690f64974664a9c6f7382fa8ce179
Date: Mon, 21 Feb 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645445184
