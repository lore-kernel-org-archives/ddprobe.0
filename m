Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E643D6A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 15:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652457059;
	h=To:Subject:From:Message-Id:Date;
	bh=EOttY3UFh6DHVp8dxUSKJBzTdy5gpdvNLZffjd/7Kgw=;
	b=iddT6+/qeKKgI5vsT/w3fZSx9u/OGoBJFgQ9ttgtiS2U8MrntejAErLS0hMj0lv1
	nH9EXbJbzmTGrCD0dKNb15PdFgWhfyBUWg7fLzluG01stJppzerYwejQH2DMwZCobAY
	i5PuMhFzMQtG+2vmOxMLfCSld3zy4QTxANuEVOBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652457059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EOttY3UFh6DHVp8dxUSKJBzTdy5gpdvNLZffjd/7Kgw=;
	b=jG9VSfbuSaPYsiQ9Yp8u+8Rb3WAwcDN66SmJ2cCgpeW9Zr/yMv8z6WDLA/+FYXGS
	A78TRADxXX86gsrrC+/pN80sZxV481kYY8cvzUy5HvdunS1YQtQBn+Rc/jgbZgI3CAk
	/VnuS0KGo4ZmAtc+FTJBTntTcSjIeeLIxBSDosY8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180be1db3e9-37b1f14d-20ea-4982-a94e-8d62914f4163-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16f9d160acd320c40463e20716c25ce601dfde8dee78c75d9067b839760d0ae2
Date: Fri, 13 May 2022 15:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652457059
