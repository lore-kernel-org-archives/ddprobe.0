Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D5733ED
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657903013;
	h=To:Subject:From:Message-Id:Date;
	bh=TcKcI/Gsa3DcabcYCQmb5pmVZQ+DAEzqIYVOH1TAUyE=;
	b=hTSjuhg0F9ATAcsd3ppjgrA16a4+LMyxWDJo1malvJXFJdaVQK82f7oM59Byjysi
	b3Fs9h9547j7i5mJrFGks4Sawd6UzxbFSyUWSHM3Ho+CtD9CiEGjw9iIM6ZWr2L9LqD
	VEUlY5WrwbIHjz/Ab05DpeEtOFoWIOU8pXkIfY3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657903013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TcKcI/Gsa3DcabcYCQmb5pmVZQ+DAEzqIYVOH1TAUyE=;
	b=XIeSI8J1hgc4gmeWUUwLMnLmUhPCQxj4jeJTqtWnSrEHURvuayczZvVtd2jj6QKT
	IyExlHBzslMZdKz5Xf2S6333c8jlOQ/T0Hhb+rYkF79U63G3U8D2Lp3XqNW0ubkZqdY
	3lPoZjdTTk5avZ0XwC/GETM8ro47JrQP7TQZJg/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018202b859c6-75d653be-066a-4fbb-864d-9b0b98cabab9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7c8e05d93494a8a635ffc24e5408c3b505909a01da3426c2015067fe84a9cb8
Date: Fri, 15 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657903012
