Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0E1810
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 14:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653401699;
	h=To:Subject:From:Message-Id:Date;
	bh=Vg7Qa0GQBFXMjgivV6ovt2KzRpW43Ja3YKEfTUTsATg=;
	b=QXOaVS7uSb4H19/WgG69jvHp9yxjLpc45L1Q7DSTe89hmjNvJsU6j5h/2slTIQjz
	0v8acntgUwF6Tx72qgLGujh2hrjj1A/4KKPgM9Vzvv2TPj8o1cZRNRLMGUfBSYQBBp6
	iWiJzz6uPrryw+/95qvCptuWJ59iVPZ6EiAugZUc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653401699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vg7Qa0GQBFXMjgivV6ovt2KzRpW43Ja3YKEfTUTsATg=;
	b=LukdMMJ1jEQL+H9NQwqmppYWzmbZwSr7Qe7CEd407gEvmPGYDIodcv8Z7ESZK86s
	9e81xqkLfAxiJr+gbn8/RTUzmh7gI91kjF0VPhiozj140VJe7Eod4E4knAzPE/gdRfb
	evQIQk2kDs6qt8jfOCbLRZO8cL6pobsSnAIQNb+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f66bc3d0-33151e76-5e81-4161-8ff3-57ebe4ba27fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84fe66793b34a45cbb1693dd72edd199ba5bcd2406e26ff07365dcc9159b189c
Date: Tue, 24 May 2022 14:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653401699
