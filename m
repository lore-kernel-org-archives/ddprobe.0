Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B617E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645460485;
	h=To:Subject:From:Message-Id:Date;
	bh=89jYsE5NjoJc9C6RXd+m8FgTr5dXMYqJKb9JqgnbVsw=;
	b=OnGIFUfRc+1t4CzoZc4Xd5iGxFCkcWADVOl04bj/79ZWtLTO5q4Ic2ZEpiG+myyV
	4BUP+sUhE/lavUUGbnBaX6tD9cDwduH3Dd+gzUWg3p4tL6c+RG+s2qZqCRnyi01zRg/
	m8my0fx1ElNTY7RZnDqJ6SDwYC4MN/Up8qtVDSAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645460485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=89jYsE5NjoJc9C6RXd+m8FgTr5dXMYqJKb9JqgnbVsw=;
	b=HOVU9GbRcYdX00y2upCVroKm7dCNsMr9oUXyKSQyJZG/dFJebUyqST9og2V8dWYI
	wA1DUiIxFEJGrIuTvqeZs+ZEuhVna0mOCglNZEUgs+ey4W7BZSa7lLA3s87nZ5K/VGI
	oXdBpcgMPlFiTpiP/qcnZc+SbEJuB9tR05V9gljI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d1672b7-c7a3169a-a7d7-46da-94ad-bf3a752607c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37d6b4bc01fce9d12369fbd1c7de106c4f7232b1bc64ac3b2f364f15433c0e0c
Date: Mon, 21 Feb 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645460484
