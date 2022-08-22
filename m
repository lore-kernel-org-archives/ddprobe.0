Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D66621
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661200252;
	h=To:Subject:From:Message-Id:Date;
	bh=rVKwf9Ru86g2zan4w/HamrkrauwI8qn6yybQ1GBcuc8=;
	b=R6XQHIh+D5bQHUgdHLLVulPDzHyoRl5gS6iABRmMxvkpp672EKgoHBphh4FEB9M6
	uxH5HIIuQVuPug9gwPlKoEGUEqhSSgJxOejBczqycVBIYQAkO/43TySMUq1F8QTknPS
	rZcaG5yn8z/Ryp382hEUJGMpAOp4VFkCQlklPQn4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661200252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rVKwf9Ru86g2zan4w/HamrkrauwI8qn6yybQ1GBcuc8=;
	b=c7ffkqZkpcUBDIaJm5tBdWP4AeeqlHMUplVZxZhEKNHQuOia4vniC4YwQ03awrEm
	CtUzQBTUYTJCC1e703ltZL9Vyy6MPuSwSp9bRs9DOA+fAX7h/xVcCzVQNrH/K4Mf/Sp
	xKj0GUhwxsseWqPlaid0q9K8obaI2dm5hY8LfHPQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c7403eaf-f7347529-4257-4c49-a859-c71057cebd3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fd20c367b24263935c64667a720224b0f32c5e483b413f4297cf13acab42fb2
Date: Mon, 22 Aug 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661200252
