Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA171383
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660611652;
	h=To:Subject:From:Message-Id:Date;
	bh=HUsZLWbdUwy3kb5t9699VX37tu6VFobMkGKrbwfAx8k=;
	b=OfqbRG18HfdZrXpz/JoIKXowOuowe+4rJOOJTSz6pvNpZhtqd+WLmbDpSy9VOTDf
	x0vKygLS8nOjHjGFdwtdXEU2PnR/AbrSjf9NiwThDngrSpoqnTxeQUJnNi+eFTcoVM3
	ASLmgQMc8qrYriwGOUD6GbzLAR+aDCOe74LuQEGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660611652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HUsZLWbdUwy3kb5t9699VX37tu6VFobMkGKrbwfAx8k=;
	b=EbmZNh1k6PEspSglC001KVylCccdRAN5WWQQYYapVRiTi2YfvAo7LvGtVllX4JX0
	GbiCLWWn7W/Qt0k3W+VhwfhvSkurckOrz4jJi6EP7nbN5tCdv0ddyiTHBBKgyI8T812
	GXfs1mRD+Kl/Qtaa1MPDnF9b/PTR0hoPfEYkXoRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a42aebf4-e173fa0b-46d3-494b-8f43-b5937985616c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5443b96be9001e0a0c6741df08cf133971da0ef6103210f05c48abe15ab2ce17
Date: Tue, 16 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660611652
