Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA677A
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 13:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652881439;
	h=To:Subject:From:Message-Id:Date;
	bh=bnBxc6pQG+ZjgCb8OGtK6TgMGteVLC0a/jrTrxxLZiM=;
	b=S6FA5Elo2xbuQDS/+78rhqT92ZhawO1kXBpmvW7Lyst9sJCJjKvpvPVASyjNWGzo
	DP4Z8vo1imqwDXoNZJ0AKR810Zm9rxBAViuhCiD99kaX+2XMRcLiKe6zHzZLIfQ/Vpe
	QhvIUL5plxQCXlMSpv908bbV1T0p8nkxB87Tont8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652881439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bnBxc6pQG+ZjgCb8OGtK6TgMGteVLC0a/jrTrxxLZiM=;
	b=SdLaZcWBaqZSZvdCIxBENitkc1cOZ4uqRaYmvqWkuNtqGlnvp1WvfQXaBCeOnymU
	zlVhvpcAdxhgNj0qYJWRaCdeg90VXFtbinZTytUSVZBWlEmCuo6EsyJH5iVGWOGmcE3
	R8Guo79Ef7qDZjjgvAm8NZ5LoWMUSi+nrdgaCNo4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d7693a1d-ffa0f313-b098-4b99-afdc-8c3d6751414f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dccb6c498b768805a90c6b62a7513e40456239afda862d01d75303d11c6a4d34
Date: Wed, 18 May 2022 13:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652881439
