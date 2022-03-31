Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6037B
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 06:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648709338;
	h=To:Subject:From:Message-Id:Date;
	bh=UasWhZQmcqUgXr/U+ZAp615nl42EeNd33Ieoycw2VsE=;
	b=kE1kiFTTzbU0AO2DRTP0EfhYystVglSCJkpgnRLo5CJNQl4kbFRAjwJKwljq96Gm
	w8dTJ/u19cPcO45E5kyFRDNgv10b5pmSn9tBuVSp7igmfGXbcG2XP/vEK/SrnQN7qOt
	XdL4cieh/XsVKEFk5QTYBxDG94QDWMG8P5kI9U40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648709338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UasWhZQmcqUgXr/U+ZAp615nl42EeNd33Ieoycw2VsE=;
	b=E1WNQhqH6b4kH/dfeFD0GKGSLYD/NtlXBozAlLj748wsm3lV5n4nbVk87XtdWTIC
	F1n+QUEiNRXSue8KXqyf9UNKMfqbcT3c68DSQJBjFLDsw+mGZOnh6bGIVeKkuGv4FBC
	8CF/JbI0yfWq9Gfanv+CuWOcsU4xamIWt4wq637s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdebc049c-faf5f0f1-d0c6-405b-913b-9a4682aa2cbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ad168252465ac5ab19a6104181c357c315dfc6f316c05bb34a8e62a689ca2fc
Date: Thu, 31 Mar 2022 06:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648709338
