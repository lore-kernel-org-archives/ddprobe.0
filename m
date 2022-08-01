Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A907F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659390052;
	h=To:Subject:From:Message-Id:Date;
	bh=MINIZlOcZonEWPolc8kujGFhPMIWLYMDgbbcKvqGsbY=;
	b=CSQoIOF/e95gARUywFt+IUE95MUNUVI8vrUpUEw8o3OJyrzJbnEZz8TVEjVCm3qz
	DXUniGwWl1Yq+NIIWjnNKyDhjssJKWRxUUnc5fTv8xs/O2IuyAvMY3JTObi9PT/DanY
	p5bepQOmaY7H4HNZECSeatkGwrdNW/HBD/5pNhFw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659390052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MINIZlOcZonEWPolc8kujGFhPMIWLYMDgbbcKvqGsbY=;
	b=CIq8cR+g1umAd/UGcRdigEQsg3iZsYr9gV+7TKUId5iuLsvx55uN7HLx2RFqefmn
	7BD+twftZKjsIE/R9m1edLoViaXnZFaQ+4Ih1IKF7W9ceRrfiSlUpsTQbvghaHzfF/B
	9X/NokMM5lFtFDKI7GM93YPB7iGoDs0aXFftwcPQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825b5ac8ac-579d4ee6-e180-4172-894c-2cb5e348311f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afebbcab5a8bea1dc6558535289b447f652786921be24e1124fc4a1e2a8b0e27
Date: Mon, 1 Aug 2022 21:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659390052
