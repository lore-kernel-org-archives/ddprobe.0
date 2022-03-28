Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A93B4358
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 12:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648472398;
	h=To:Subject:From:Message-Id:Date;
	bh=iq+6EY23zRmT1UaO1LSqurJXUZe1jcoTbP3qyfudveg=;
	b=ZVu7F6bWSlEfRlWA3jOaxDTclzk4inFYeItDDeDJYgXlL4CJbI/joci6UD5Touaw
	IkT/jutGK4YIugZIvhtDOGy3j7GITy20Ub2Hmj5px0kRaqzlCTHZ9CrB5MnR8uPEQJv
	Dc4Lo/pKkJjbdZy9NUOIJ4uOtT4iBzXuKKju6ybY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648472398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iq+6EY23zRmT1UaO1LSqurJXUZe1jcoTbP3qyfudveg=;
	b=EtJIUFd4GsG1m6BrHAilg1IJUfKfDYu4kLjMFWKCiJPsi0JPqP3QzH5oEtEZXBD1
	bSash2clPRrgAfDhFLX2gx+Tx1hW1NXUlsRTJbLxV72j6K0EV6W7lmdAWMAitRrbg+d
	dQq0fHvqxbBIvOyRZMUGv+CTT1h0aEOna2cH/O34=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd09c9998-20473a55-1bf2-4984-9a78-cdd63322fce7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6db271136032523710d38ead79fd7af857778774db612e4cecaa28d82ead3166
Date: Mon, 28 Mar 2022 12:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648472398
