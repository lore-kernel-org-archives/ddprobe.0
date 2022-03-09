Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FFD317C0
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646867785;
	h=To:Subject:From:Message-Id:Date;
	bh=4fzofQD8WyDhm3brDNy/EijWQDdELbdYTlxcYXmmBCM=;
	b=Jl2XyUVgAsxfTw4f6jJ5NBz8yRCibFq3YS8F1rmgWxF6l80j0fxwTT/bxQ12huGj
	OQwUWI/Ni9AWYBTLTwcZ8NXsRoguFlsvyjxshA0B/VhRYbXnNlx8coJH7VsEU0nANkm
	6utljD5PGnhTshivRWFthJKzuMx/dxoRxx9PLxYU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646867785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4fzofQD8WyDhm3brDNy/EijWQDdELbdYTlxcYXmmBCM=;
	b=RO8xmRaKn9glBemA5ltLsztRBkTrccgLlHU2LXKIsPwltYYCxQA1mtZ+QuKXJv2R
	/ftWTjPu56WstyUJvWtw7zARMjrEy+YlceRJQENLA5Wsw2ZasGesosBUoljlICxRmhQ
	UKxE/9Ulh+cYPzZz4/6DgzP7s6jxn4whUtbbmblc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f70f824b6-f106db21-04ad-4bf6-b708-312bbc6fe783-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff1de5a4f967aa863d8607510cb3c950aac78b3d6d69b0b4da0ded4320c8b18c
Date: Wed, 9 Mar 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646867784
