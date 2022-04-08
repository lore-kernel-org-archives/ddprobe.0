Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19092258A
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 16:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649437138;
	h=To:Subject:From:Message-Id:Date;
	bh=6xt6TBVMJX4wWoGsc4pTjF5B/QmXoppXRgOT7c2E7zY=;
	b=l0TQlEkJI/bQUi3Sl81h4zfxuWyPHA1fzAFxNAKPtnUPF5doEO/SIMNibG9eRsah
	k29ITXLEAr6GaooHutMaH1luWUqfW2HQq2ESuUXj41yyfrcICFoN1ASYWJROMLY7811
	suTQxQcAqC8Y5p7gE+e8O5TLrwCsu6j4ekPhD6Aw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649437138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6xt6TBVMJX4wWoGsc4pTjF5B/QmXoppXRgOT7c2E7zY=;
	b=gF0DVLhlhHWuP4BYJD7Q0tK+n9fPv3iwChSpzqYbwkKQNkURyii8ol+fAF0ul98U
	Pn5tPbAsQDJTjHoDG+OmlmAbxEQ9DTqdz2EH0K83FAys0jWrd0x2BRvy/CxDvK8+ecV
	FuMb09Q9XEYyLUnjVAG7bszjW9U0CTnjnm3fgo7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800a1d5d3f-9a197641-04da-4421-b385-95f663a94a5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad1e089ce525b8c4e3a5cc2cabc48abbfce04d4bddbf1f9398984ff5e6829f20
Date: Fri, 8 Apr 2022 16:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649437138
