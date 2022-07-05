Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B4E2F34
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657013213;
	h=To:Subject:From:Message-Id:Date;
	bh=WoooTaPWHh46KCxbD3kGxSAVVeoGelZVC+KlMxgd2Lo=;
	b=kO72AOWDNRf+xSAuWn51AMOhFI0sZCHNiggH1j2PIZcck9QoKMwiSi7XbRoLjtIz
	OZjNwE3X4MVxtQ7s/BDViIPawbPZtNcoNnDq0OXOTdUOLzGB5rNL4o9lU1tvjaigpzL
	B3pcGQC6703Ez+2an7+TP3VXdinzvj3/Y4Xx/O8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657013213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WoooTaPWHh46KCxbD3kGxSAVVeoGelZVC+KlMxgd2Lo=;
	b=X3kU9D8hfedKILLJQZgeCG/Z15N7O84E923yblC3xAzgYbSlYVjMPU74RFSDbXeD
	R+t1EcpsDnaUby6YRuKN53uzcMmxFcvFgVJQsgki28aIYWZhvBnoAJ61+pRwbKG+Ig3
	boBRTIZJeu4KU494YlF6JOOSddlbOo90orFwlhLk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cdaf1483-042c792a-2306-4c40-9d80-d0a05390ad40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7066c4c4694f06cd6c50c8fe4388c5600dc7a3fe9edb9900d61d56a16ee97759
Date: Tue, 5 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657013212
