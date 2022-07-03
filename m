Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164EC1854
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 01:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656813412;
	h=To:Subject:From:Message-Id:Date;
	bh=NtJ7c75A+ypcBrMxNzKcjhl8ev/lH3DYk4aeZPZtNcw=;
	b=gPjb66fHByBZRxs/QzGVPALeyzOq10vHP8HX5ez3Gura3URpro8Pd65QbMk7VqNN
	zKCJhLiKstoyTJCYpiq4j/l2+e0SLydRWXgOvHEwEfZzTZ/Cm+ACtH+iXU0H8L+hUJQ
	hNS4W7vfiXm3Oo91P01OyTjmbxPfckRDrVWePQ5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656813412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NtJ7c75A+ypcBrMxNzKcjhl8ev/lH3DYk4aeZPZtNcw=;
	b=bnXmn1p+RQOV3qxNQducJwQhU8+rwXcam4+6OlM4wzdB6iEzHLfOsMgxxVJGWyVp
	/afDkgQxHjZmAkfY71B8G5KvRSrFqrpKOEI5krshw9XGds2Faes9fyZCSivMlRMbCLi
	wjza+tUXsyViOub/u4XTeP39A4hF0f91uxxGKz7Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c1c65fca-3286b39d-e4a6-4fb1-acbe-103c5a39e10c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d66dcd7f5b75309bcfaf3e0da7311d6b2bfb953624f41d26472bb6369b3438d
Date: Sun, 3 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656813412
