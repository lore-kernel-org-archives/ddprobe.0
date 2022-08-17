Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594047463
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660771852;
	h=To:Subject:From:Message-Id:Date;
	bh=7cqqY3/O2ImNUrCRLZ0tQLh0ujhhNgJUFOth2Gl47RQ=;
	b=Y9YDO1tVqGyz97R+jHuQa/kxq7Z7/a8f9KnIM/WuRCHa2JjyRBR3fTt+ZY782PnE
	E1muuCFSYGupjZzkeYBSCSMMvu28SkS8RnfintjHc+Q1fBv48YaSX+D115P9W3DFMge
	XJjR+S5yVcd+211CPmxAt2drG23RmKFyUKHeYOUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660771852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7cqqY3/O2ImNUrCRLZ0tQLh0ujhhNgJUFOth2Gl47RQ=;
	b=kDcu6/TQxFM490iEnPjwpbad2ScJaYXQhUEIHyLEUP/zBVdwLqj5yw1Foch6S6EH
	rDE8oL3GrIxFw0e6qxf8J5S9d2/hrn3wZAMr7XWIel8x3DH6HEGrnM4Q/1Pza4te13h
	1zzkbl35JXDHj2zhwVYl5SHFuMthqzY4N/rlPXEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182adb76115-f89dc3b6-b8b4-4a7f-90a6-f57132da0c35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af91571e93f8841bf72df387fde0549505f56f53d43f32af2dbff3df7a7af210
Date: Wed, 17 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660771852
