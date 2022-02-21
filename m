Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A74102581
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645443385;
	h=To:Subject:From:Message-Id:Date;
	bh=bOu1Sa7ai0O9Ujs4RZeO4OedLUOBGrBhSKF8Wf3bJXk=;
	b=jLALYOl2LWCxEWY7Te0mACSWrw5/lag29hQRLu1p7jtxKqdNV5/Jc61d+NmloJc6
	YYPa5+aoYvV2KYpMWg9YvI4awi/eP17Bk+v++TmZYD7iJAr61Nvf2JnQ8phz5b4fR8Y
	ck+bCtTgfoVcuwl4KBU6JH5BshwPOT8rXDTIHX9M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645443385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bOu1Sa7ai0O9Ujs4RZeO4OedLUOBGrBhSKF8Wf3bJXk=;
	b=LT0pBxkC8RDSysI6fxNvUBm9SaBa+bBsd6XJbRBW8ySVpYLfldvigYKpbMucwsGo
	bKy5CWMWCZr6ttyt/BvSw+u1OTJYs7n2bKU8Cl7zfwFdJ3+dWBui7WZlBMZQB2QpTGu
	Gx+H1zEX3saifqn1bxNh7mxS8wy7NwlyUeSTdezo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c1185cd-69ee7a1b-1b88-402c-a9ab-1322759b25a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b847f0c272210aaf0f015ac830c2347cf1bf3cc762283f69ef7d670fba9ee48
Date: Mon, 21 Feb 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645443384
