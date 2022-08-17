Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570003D8B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660738852;
	h=To:Subject:From:Message-Id:Date;
	bh=HOHE6NgvrDV+uwTLKIney7OZGNFuQj8FJbE9dRWlALw=;
	b=Emc76UAXZqkkg6now8l7hFBvfFrElMoZgDuJtInH7w6yGLYo49cX/wBA6YTCM/7K
	eXuX3SaHpImEKRDhv/cLwvSSQNgQ731/y0cHlBAFABxs9PrcR2vrdHUXP2zkTv8Lkgh
	NSir/3kyD8g5b3QwBjkAJ4JodqG6OgkJskoatlOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660738852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HOHE6NgvrDV+uwTLKIney7OZGNFuQj8FJbE9dRWlALw=;
	b=WKSP8lsNMfx67Xl91lsnk6TSFnUQyWFmeWfmXfLvPro6/vKJfWvP8dffwScHB2jR
	NkxvaSQFmVQVqtfawfv5V4q/gd2CYZS0XLViLYsgWT/blkc4fVtRwC/SylwOOWHhYxg
	r+keW0fs4/QBa7ukbhksHftAoHhyEMglVpUni+Js=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182abbfd6da-d10fed7e-a523-4199-8f73-be2b23cfa412-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c3e532b223c2573962b16a1ff4874708f3799c8aa766f110d21c6e8c85238e6
Date: Wed, 17 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660738852
