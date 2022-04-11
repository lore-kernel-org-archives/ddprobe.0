Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134171849
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 14:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649687038;
	h=To:Subject:From:Message-Id:Date;
	bh=4ykkr0hSiWrBRk2XAvEQtg1vtqItA7qH4m+o4SZU5ro=;
	b=iyUc0ME8e1Y5+E0NDvS2P+l531MyBjHQyS+vQ8I8uYIrMZer9IJxZcnhemSUzAE5
	jl/H74QK8MCjG7h2yC7Nq2jTC+2optPVgi8IdTfiUgoCP7wxlvKZbtmknEk+VFMB+R+
	vu8G41z/2+Iq2pj7TejHz02YBMsElLE3k/gt7d6w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649687038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ykkr0hSiWrBRk2XAvEQtg1vtqItA7qH4m+o4SZU5ro=;
	b=cXEL3gSay3Sn/2UxjRgciCqs8eofRQCBhEyYLEWefxgTdb5MuEfNFI56RRhjcEaA
	0orAW80Eh+cXxq43vIw1cHQMsqfm9oMkESjsjZq9Kk7sNpGgC85VK7tffxnK6LRJ3Nk
	5yLBAEByrEbhnfP0gaOsqG7wwq9uUkAGuK2RKHGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018019028957-9bf32953-1b01-4112-830d-4b18d3e1ee89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b5764c121287945c52cce5f57ca8ea1e56c0460e33d410e6af784044355461e
Date: Mon, 11 Apr 2022 14:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649687038
