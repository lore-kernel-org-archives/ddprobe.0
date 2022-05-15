Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7137F5
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 08:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652604479;
	h=To:Subject:From:Message-Id:Date;
	bh=y9+WxAPu3HiwsjpRKfI77kVUnM2ZCdQD/kaWCkmZJdc=;
	b=Slh3SOGNcz5PRBkhqh/8RiLQTwhITUPP5rWAUAY1epOGbu+70NWP5Y21dg9guSaL
	OV3863jp/MdlC8TB6gIXIixbtV8vCvQgCOR2Zw5d0D4ydMqQwAD1etn+KD4YsiaasCS
	hSsl5loLcJfTlhutH7KJDoRtrQxW3rpTEMxX4p6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652604479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y9+WxAPu3HiwsjpRKfI77kVUnM2ZCdQD/kaWCkmZJdc=;
	b=EGZzzhHUTaneHhjVnXIl7gTogG/6zqaEe6kJn4sp52qqHTuBphiF3J7JTC4HIRo2
	P5ztxJFhgv2dBg+H+Z1/TY5SBFs4G6ooZXeyw7cUPr89jCYxA79SYLo11rReXDeTNWY
	Ozsut/uIIFJo5No5Ys7GgnJhD4pscr/TbJDkiH+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c6e7270d-afae5abd-cd76-4afe-863e-0ad95cad9574-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 424f6de521fcf53bf639184dbcef146e1b4d866e08571157280710b13c690f49
Date: Sun, 15 May 2022 08:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652604479
