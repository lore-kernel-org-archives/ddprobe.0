Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732D07B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 10:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655546999;
	h=To:Subject:From:Message-Id:Date;
	bh=xM8BtPG2mRhWTHXmKMA57Fj42KZ7xMKkCbQs33fbZNg=;
	b=Cg9iF55iIjchS6+BF1yBRPPUuovvSn8W9Vw/t1HhklEAmUhw/fGMfSfOGFAZumde
	RtdpjbE/VF4Z3YjbOLe46e0bm87XRgWw65Nj1AyHybl3hEEfJz7Qm2V8j8kKOFFhFNL
	vYEYpBbABD07ulJDGkv9/0cGU1wJ4/DRzfk/5TMQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655546999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xM8BtPG2mRhWTHXmKMA57Fj42KZ7xMKkCbQs33fbZNg=;
	b=fKWtQobKQznCeySXKKHI1GloUuVxEnwQ18/G8WF5yPkqkUT5W7QO5MgVNMMOTXXB
	dhgH56yPQvX2k9eLx21QmQ+F9U2MaiCpXB1foQvVgZlf+Bl7N0bphqnPk7mA4P2eiQE
	T1u2I6CNe8nJAGSSEB6VyhLCdVphsbgPuZYjNCvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181764a71e9-62672049-3edd-4f00-af30-b5906899ad99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76cba38ab9f516d17bc38c2674dacbd0cd9b50a25c17909598589c1a55fc4a4f
Date: Sat, 18 Jun 2022 10:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655546999
