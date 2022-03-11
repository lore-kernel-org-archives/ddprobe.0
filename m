Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC50D7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646975485;
	h=To:Subject:From:Message-Id:Date;
	bh=vEqLDZnLVWQNLr5OaGF11Zrf4XXOoZv8DJuOeE/os4k=;
	b=ShJAhJ3CM70t4Wn4F1IEOZlocZxj3gaJKIawjSmypKLmiWsr40W/FylLS5ariHTE
	k51McbGk65P6KTvhy+EWqVj6XqemRo80w79VTkFN6NtzkHh7KYTJt3X7SCiVZIcHn0f
	XgYeQvEwhdE0CrwC67YMumi2ueUglv7ym4C5Aq3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646975485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vEqLDZnLVWQNLr5OaGF11Zrf4XXOoZv8DJuOeE/os4k=;
	b=lfx+LLUGxGz22yBd9aP/Fl7l3xLNTC+E3ur3w3mYRfI2DleSwL9UpY51j5TG6LtQ
	VqgdLCfgtiJQVEODSNZjLYb9N5vgXdJ7Zh164to6iVyxTJWODojeGMhcmor6sqFYTtY
	RnfJI438O0JmIT5VfBxjJTRZm/gPJ++wK3NYlnzs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77638340-a0c3e6b2-0045-4d3a-b076-690b477af055-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ad06b71e382ebf32e05021c19668ac323102ca02e4205f7c2a23c9ae1f8eb22
Date: Fri, 11 Mar 2022 05:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646975484
