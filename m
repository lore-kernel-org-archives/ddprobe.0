Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6873133D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647780385;
	h=To:Subject:From:Message-Id:Date;
	bh=WjAcHVMJwH6Sk4wJgRQKcF4n3jnphluhFotxkcwf1yc=;
	b=Jcoyzyf+qnM7RUJDlRtzvVcBi/JtkusYlZeZfROjBadQ7Dlf06I/q9hxWJbi7GlL
	6E12Yt3mopHbYemDiTRTejEaZYb7ZVZHCj0/j9AZmSuoXAXOX1kCmbjSe5j/ft0cEOS
	fUd6Y8IjUmeI2FrSx+8G1VyGxYLgDIjgFq0iFvhU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647780385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WjAcHVMJwH6Sk4wJgRQKcF4n3jnphluhFotxkcwf1yc=;
	b=iXQBSkxxYhtqtpKCV7pNTOunjsvyaAkY0Bd/C8AeyWkRiHx2hDWXi9fJwcIICcE4
	gu+YPdjStxPWo3pVZXPd+Jnl3l5ChislcBDtqlEJFjpx8sObbyaQWyN6+ReV1Ljmn1/
	4EQnTGQ5Jki9BR2Y8PS1XtHZS+kvdV9AWbYlBV40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa75d4fc5-67bb500a-5a70-46fa-9f39-afa72b000255-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61525bfabb181b631a2411259bd1031affc11ce0718f4bd95abb797b891c4df3
Date: Sun, 20 Mar 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647780384
