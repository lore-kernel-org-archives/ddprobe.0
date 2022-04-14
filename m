Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E791F3219
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 19:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649965858;
	h=To:Subject:From:Message-Id:Date;
	bh=z8vTD4KoRFpiKzGMkiDURPv4tQv1J/7Wy7PdVyl6Y/A=;
	b=Rc+daPc7bEW0CtMLko5/YXt4pEZwgPeyTeKvN9TeoXJBtz3q136tv8gsktybQNNG
	szcr4ny3fHrdAvjfChqN0BfqXtK+IbInM0mEkdlyQ62Y4E6/hl1oqO+XNxsy2j0MSXC
	lFkwCE4oG5vZ+YlNVSoktuE0ZxRhc+GZx1d67yyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649965858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z8vTD4KoRFpiKzGMkiDURPv4tQv1J/7Wy7PdVyl6Y/A=;
	b=JqMGuNtRDkA3yeKA8NHcAxf5AAYAfxgYmOjdIuWrHM3HPT77Mmf2azCURQloIGHB
	tU7IfKx3t5C49XSZQvVRsaV99jRcCbP40y1tDZF4HBK5MS8XZdU6FdstQPI6oa5bPzR
	qEc8Qnya4C9+xn6HydwFzsv8WbcHUE8jk/4BDYYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018029a0fdee-d2b865f5-aa43-4ef0-b359-5699fd0ef028-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bb90d14eab94319b781b816f3dcd1b9d1e32fc4e8e3c8e2d234f1961f616278
Date: Thu, 14 Apr 2022 19:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649965858
