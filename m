Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D2F2917
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661006452;
	h=To:Subject:From:Message-Id:Date;
	bh=waZf7xldn8/pRtCo4Cw5rb70kXQFzcS9a3e8dbMR1as=;
	b=h7nauzHL0IBXDSXIjP4ooHLaer086UQPb18Vdm43xkk5qvQfjxR54ya5naD+dvco
	EnuVmYkpEKCCzec/kSNE5Ro7zDR7AmrfnXhkGbPX1gnnVc+nNeRO9mBt0GIfou3SFr3
	mCA9yjHfHscH/KeLVA5niP6+yDp7JZhKG3GUvTh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661006452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=waZf7xldn8/pRtCo4Cw5rb70kXQFzcS9a3e8dbMR1as=;
	b=S72WabRh2V3CFv0URwj6jyU2yHBMg3emq0Eovwewn9YjpKqjqZZ0ZM0EQkC4gE51
	56q7H9Dy+pmLpx7xR3s7x3elQtrc96EEBk3WVf9VO6G9RF/xXBfZi2eH6TlDzfSezD9
	L+kiZiCcxjxI/jWp6Xpb9vZTZ0D/jpqt0yRo72YQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bbb31785-0264f661-20c0-4338-b84c-138d5829d029-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b201497a8e6334e5af855eb83da06eb5e7fa91e576dad3c40b76a6d9baf5c5f2
Date: Sat, 20 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661006452
