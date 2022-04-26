Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E05363
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 03:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650942959;
	h=To:Subject:From:Message-Id:Date;
	bh=+3JYwsObBlHsD9XiXUT10Z5y5gogfnGC6CwqIEBNws4=;
	b=MKWgjUlj8UqvXWMeikMdQrticgB88Xh4nwGpxegWWPuEUFHUWb2JzcDUu/9D9UJ5
	fEO70+ozvrMTR447XoeykIaDs4/LuzxC05Bb4xMQ2PhetTDNH1Gj/BmMTR8brHuSr6+
	ozRy8n+ZD9CXq6twYrBMfEEXWSj4QwDZb83/QGU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650942959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+3JYwsObBlHsD9XiXUT10Z5y5gogfnGC6CwqIEBNws4=;
	b=cAi+rsR5QRKLJUieBikPrTgCErgoZoQCY8cC/P2tlH8Ni72T+onYywL7+DcYOq7e
	Hd1gl3QrpvEXlFbOrS16TOZ1TL/PAD8+OGrUB9RbhBoY+33IRShUJKQCdTC4C4+ep7D
	I7lEC/aLiRRlPLLTMnB9ZS2/6pILNac5EtPF4XvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018063de5acd-c01c94fb-289e-40bf-9876-cc8fb9697697-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e75356e76de570c6570556a4eb375a1ca66ef4562410ad2154f5a8042a221f8f
Date: Tue, 26 Apr 2022 03:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650942958
