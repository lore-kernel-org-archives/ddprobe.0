Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ADB3237
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 22:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655765279;
	h=To:Subject:From:Message-Id:Date;
	bh=vcWLXjVrS/oLVrKtCZ/Gy5/egudPcVofCqUXLC7PY3U=;
	b=KkWapjXxXvfw/bLV461sUpkvOsIabF50NhXa3LsBgWKnZ1VUgexnNZvdQ4ZGMnt6
	B0p9+KfvoYCId2JkaS4LCOC9cFhzuNGEUmlMfbtumyVtqn/J49RB9V9U2cth5i344qq
	dG2EhhBYB+NCrxa0lqoaZRQ2PhrdXW9Rt3Gm/6F0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655765279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vcWLXjVrS/oLVrKtCZ/Gy5/egudPcVofCqUXLC7PY3U=;
	b=D1FEWNEk2yqaBgtLQjvqCcUjhp5LJa/fHAfYRhdKZWIzXCeRze6hzKJKCCwFkj9c
	ROfjXUHOyJeOWGxW0tG6Y/zXhs6yAppf0QYLaZV/sKjEpw139wefii1HF8d36jaB0vX
	ozMLYK8XKSE5aUbe2YPF7CY7OUjvH8NZLZPf7u4U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181834d2207-fb22e3ec-fd82-430f-8cfb-aa5e00095145-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4c9194b4edbabf38b44909b90782a54062b7dc2ac7d409e67fa61087e6bbbd0
Date: Mon, 20 Jun 2022 22:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655765279
