Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ECE7B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 09:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650102778;
	h=To:Subject:From:Message-Id:Date;
	bh=jU2TDvLeIku4AiEVG7b2fi/btmewVZlwuF9b/PbR9SU=;
	b=XDLFC6Bev8Zt89NmISCuQCWUtgMfqdI1UUF7lxY/pBASJFZVFLqnxoyTvdeeCa0q
	EnANM0pgXWg5We3tgtyLQXOZtpC90+5eXYARidLDXh3B046XCl8QB/uZ/xdwO4mH7fv
	DUrAcM+jlfRnPZvfjXjLR1PLrxZfLt9AXCN5jgDI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650102778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jU2TDvLeIku4AiEVG7b2fi/btmewVZlwuF9b/PbR9SU=;
	b=Ie3RSMU1i7ThkudNCmPEAkB2K8loE8VGJSeXXDppp1ebam2jaH4CeMKT633K9WoZ
	BhJdFVv++zMtJ/yU/Wqk+mI/JSoPxnMG1X00FldeBkG/2DD06ffaPljeiHcKOv6c3QH
	qq8L6ZUfNjxqvXLx6y12NXWvH+TxsxDQlbdU8h1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018031ca39c7-83e20086-c16b-4cf7-9567-597f2c9d9b7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cee056f64919b675fb15f5e7356a833131959f6ee9877854bc2ea89b34c1071c
Date: Sat, 16 Apr 2022 09:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650102778
