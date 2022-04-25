Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BFC7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 05:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650863338;
	h=To:Subject:From:Message-Id:Date;
	bh=Hz1KkdvBvA4yu3b41bAGdxnDutv4kliC4BEQQn0kzVY=;
	b=O2hrHaiX5OAxQzruPkfe2rTX5zUncKQ7e1SbP3OjCm4TDcdszt0uetuHQpN+aq36
	/xZOXnlazgrHcKr3GztFzdAJiW+2ISZ20cCKgI92uipQXm4dLb/nskyWXdFTSQ2JFGl
	2swsrIe/rh1BnR5NphpWDwIKWe/RaKsczRPX69KI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650863338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hz1KkdvBvA4yu3b41bAGdxnDutv4kliC4BEQQn0kzVY=;
	b=C5PSJfwSkC/7pCO7NLhnkZ2AIT9B5TkTj88l4a5aDRmy+P22JP2CS/KhHzHUtNUJ
	LyBMpB7bvnqmkB7SVpMgZYbyNV1RxpEe0CYdXnjWljEJ46HudFRHqMN218IrW9HMmYU
	VnSCjl51fwhybqad7X4ezE9D5OowGkCqQ+5vfDoc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805f1f7326-44e94edb-b144-4d88-951f-4dd3a636c259-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4151d9b451577d066e65041e61433bf6ec1240ed726f77a10f163a65744f69d6
Date: Mon, 25 Apr 2022 05:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650863338
