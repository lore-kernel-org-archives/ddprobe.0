Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5CFA6AA2
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659657053;
	h=To:Subject:From:Message-Id:Date;
	bh=zY//iwWU8jsdHjtd0C+GaiTtjI5HSOPAZqQe2Aoixyw=;
	b=klAmg05DMsl+ONVenE8mD5YIEzjRAPL++Z646GVCOaHWHnY0Tnr2on8wwd3EQ6Nq
	b5XcT+NJXX8oIG7XNJf6O8/v2f2q051q+SDZ5pGT9W1FmrALi7pTqn/FgHkKGAQSjtT
	6SuwF02NLI7uhgGnTdQrSu5GI9pa22RLs5C2HO5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659657053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zY//iwWU8jsdHjtd0C+GaiTtjI5HSOPAZqQe2Aoixyw=;
	b=LvISYp0HHEtx72Fobd6Sj3/c5KzY/rnl+WyM3GkpjrMAxTXTfxHW1nzANFbCJGRn
	BksUXTnX/vWLalxN6seGChz52RPNST+FUpgqHR/xJpde8rjtcEP0TvCxIpurfD4almZ
	Be+9/tz2iTTtrBki9hlmc8YwYo9sMjwAZBw147Js=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826b44e16a-e395ca91-0b0d-4483-9c7a-b82377751bab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaa3e5f325ebe96d594b2682cde94192abfdf8d44a523da55c1a281f40b49719
Date: Thu, 4 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659657052
