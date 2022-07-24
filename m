Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161CB7E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658649412;
	h=To:Subject:From:Message-Id:Date;
	bh=uQNFoyskz/I/wG0xvcDOTWFtgMjOOSOW+0761tj6Xi0=;
	b=O1ppGLt4qyLQhDeH7cTd55cnnKHDqExfcMr7e4ArWLtsP2122GDTxh4GKVszvSUe
	vJgOhO0YIodl7UW4aYmri0GMikDtCYg3J7UcpyfJiPVhYrkXHgNlhjcKrveNnyIodUW
	IKPD5vOQuk7lfg1yzHhDikj9OQ4ZyNMBbso/rnFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658649412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uQNFoyskz/I/wG0xvcDOTWFtgMjOOSOW+0761tj6Xi0=;
	b=cQgnmB6p45H26ee91lMYvOg8U1MyyIj9lTWs1BF87sGtmZy2SqKtkxYduL2UT+Ns
	7R3VZjIsV6UftTIURq+bE+kzu8zNAFF62X/wdbAUDBCu7Qbte8fySIoRrDcPzoB9+2Y
	x3+4KJ0F0s86mcFmoOluTJvU24tfW7VLWMPkh8Ac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f3582b6-17893ffb-5390-4219-96f5-a6f5a956d739-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 732642371f9bf0813cf3c1e305cb4bf47adedbfbb89598432163c20efab22327
Date: Sun, 24 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658649412
