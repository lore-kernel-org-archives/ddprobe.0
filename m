Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35F87A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656405412;
	h=To:Subject:From:Message-Id:Date;
	bh=R+9pBKDXemIQVKuOMkidxfR11OuSlFyRI2HDS/ekTYc=;
	b=CgiPGsOGguqxcvCtdKe0JJNlzhZwhKsPADOglWIUi0yWrp69zgvhN+4AXv54jAka
	rofck5HVwWwL2vB0mzIpKJuIS5yzhRM2poxRHOE0bLF5zS+tUvn71+PMQUC2mOa+frD
	Yqu/9kM3DyQVxOVJztYTIsOOUFAa8VqF0CWM8WtI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656405412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R+9pBKDXemIQVKuOMkidxfR11OuSlFyRI2HDS/ekTYc=;
	b=d+GM4+6Ph5R2hOJsDCvh5MEZ7TMPZ+WVkXOzwe9/PgTLtxjj3AHr3082gq6aC3kE
	T2K7DE7zfHHGMNUUs2O2C9K/trjJ04NwO3/TUrbMIObWbRJ4N0YHqXw6Nh32K51iYpB
	X8JwAECvk7XRDE/qhklL6UluAtGnTiZsU35vjTcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a974c9b0-55b80778-0599-4a41-a500-937172a12a73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1ec8236ffa18ee36a92c1a975a12852596da650757fdf079c6a9e7699a082c8
Date: Tue, 28 Jun 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656405412
