Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C257A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 11:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655290859;
	h=To:Subject:From:Message-Id:Date;
	bh=DRf7stTzG6cN59C5T6ymFEYBgHn4dGJ8XImhlY2Hd0A=;
	b=j1gDyEa4vEozAgP8nbGzDasrB6pEyb7Wj296r11WTzsJkZLSLfzwE5f1AgeQurbe
	pzAmYjXzQO0IxiJLuVkcEkGFlzO3e1rp+5uVbIyXTtObMzKDxw0GnBI+IKfOLGPoG1+
	63QZpxce+jM6QvEFAjvuNP0eAfRSZAmLiHIzI+68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655290859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DRf7stTzG6cN59C5T6ymFEYBgHn4dGJ8XImhlY2Hd0A=;
	b=UvHJqWDV7tWxZdaEpNcIyRqzjTMK42FuoZhIBYHIZSQn9H1Ts19nuUcmrDpX3yaj
	rvpqasEldENv++SCqJlFSGyJA25+qj2m4mxJbhNkx8hxveXzjrk2ZTH0LvXGglSsO7L
	NOWm9+SHdHXEOQpqikdKCkE3vYfTwN3zpoS7Ne/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018167060f07-cd226488-f8c9-4bf9-9a9b-ccc4bd5be5ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25332155c0ee6d3b96b8db12eb561443494e26655a265a5b99414cb04f33e0c6
Date: Wed, 15 Jun 2022 11:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655290859
