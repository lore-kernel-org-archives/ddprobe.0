Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248EE7C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 16:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655052599;
	h=To:Subject:From:Message-Id:Date;
	bh=OS0Oi/UIvpOP3u/AAv8ggzvZGZOcfA4maTgSKFgKCz8=;
	b=LTU1uHWS2nAw9DReuMhL0wZ+pvk+jg107LuftcVReligq/KlRfG0ZJdSiZ0vd9hP
	HDVUBKMRUVVupeDsCacxv6SajF1pf/ifXF/H+2RESy89gYkaGE1uIdiRAtOMp3TpmEi
	Z3g/CzJ0nFmU/naJf5y8/Jl2rXmHUxkNhPWyPJwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655052599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OS0Oi/UIvpOP3u/AAv8ggzvZGZOcfA4maTgSKFgKCz8=;
	b=h7VmoLTQokLLmwxaR3a0JUVpJF7RPU4C59hxiyFb5iSUdCgE4f5867SjDg7eugqk
	1oVC1tE1fC1+M/uHyV6qPz33Uwj4qFXUwErqeiH9Psx452+E4uAAPmS60BE2cYGjEBc
	pNq63oJjgIzsNu76onZ9t+IhXVN+mUfjn2JX+gq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018158d27ff3-c95cc0f9-e75d-42de-839d-89a6380640d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be4ea0f7d267d3e4fed1f8612cf413926aaf6eda1f0e40933b8965026152e65d
Date: Sun, 12 Jun 2022 16:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655052599
