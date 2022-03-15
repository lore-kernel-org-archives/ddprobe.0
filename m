Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7AE23B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647357085;
	h=To:Subject:From:Message-Id:Date;
	bh=yMJv2eLlLyqRkzvMhZaO2QoBSIC0/rShELjvQbLGfr0=;
	b=fGUJkO/OIUODpZGRqwR9k5mdqzyVmOw5D/Lhkboyks9MBuq7yUFl+Tudx3h4YTHf
	oDKjdMc5mkwMXey4SpWoYZURIZXoIAJLGAU+RP3Wp0pc8zsVTma1jmZWkps3bylyMif
	Gsu3v0B/NAc9kdAS+LcztmlIWiVnDdciB7UsR7UI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647357085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yMJv2eLlLyqRkzvMhZaO2QoBSIC0/rShELjvQbLGfr0=;
	b=cJ8fSlcgUgiw4D5EXOhjd7ivpAcoTdWafmF85w1JE5y6K8IyaE4+bQM7RUU9HcNL
	j+Jl3VeWDC+moU7n+yqrQLYj8jOA0UMRUAwE3m48/ktKTziPqWHW6icg74K/t4jWxLM
	ttANxTUbYx3ycIEEo3XtQlknWkoJIR8cFb5bPl4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e2244b3-7caeddff-803a-4a61-85dc-2d75ead1cf49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65abae04992d40739654aa6e019585cc79910507dc05881c0cef2ec6f498d7a6
Date: Tue, 15 Mar 2022 15:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647357084
