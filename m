Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163161C3A
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 15:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656688012;
	h=To:Subject:From:Message-Id:Date;
	bh=auJFPCxmw9i+BEF45l8p+vRVB25j00IBCpjbO1NKXwQ=;
	b=AlLIuQNUnFZmOb3A2nAB3svezZXDn17s//TpSBvy8dyWk203Z97/2Fmx2zkcwohn
	b98Jkrum1VFOhmARKKUwIIRvubKXapnbQO9qzRrCzoMvSahL+cXo5DedsMPTG4Gx+xX
	I75slbi/1X5zT+l8H73TXUUtn8BnolZ11ZBxf8S4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656688012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=auJFPCxmw9i+BEF45l8p+vRVB25j00IBCpjbO1NKXwQ=;
	b=VpQSBsFPENX+5AD+PpMK1yBTbQzoIWlGZgqL6/2kD0Zee1rkB414v/ZBHMgaJ/sw
	scwIsAwnZwdqXTdsRniz5kp+S3BG2ekTdYS0jPKUILVkdVjsazz39jYtgkNucMe85DC
	NIiHlQ/d5zAdV3ksIY6eLV3rRsmUgFEeU31TxFkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ba4cebf5-00caa346-d5a7-435c-93e8-a55427d7d476-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dfcf80d00a6928ef9cffe6bae8c6e88219b643cea88f71db059ee6aac02be57
Date: Fri, 1 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656688012
