Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEA1185F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 12:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655210459;
	h=To:Subject:From:Message-Id:Date;
	bh=A7GbOqGAlgJmr0IQnueVnQtOYVG8BH+3sEK/sGgWCbY=;
	b=Hz0BwkGHSfoGgnNIYzqXKGK5GsJlg3bwaw/CU4ZlERltZdlvUS6225Ssz0oDeWqa
	rf8E97dbq/zoCffU5yd5F3i5V/TW6x6K17dR9mO14TuwsZcbSTpCFZ6CmsRBYoU/pBF
	urnPP3whxUh8l/hS08fYaCUInZ3tqcFgBxmkGu1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655210459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A7GbOqGAlgJmr0IQnueVnQtOYVG8BH+3sEK/sGgWCbY=;
	b=HTvpm84cy1wg7SiP7LnX7oqg3WTH9ep2g92TQYcaL8EV0+wenOeE4W97XNUQXOxK
	FRYYem3OAe3KbnxEVLdhxG/zagh5OFoGsSPjEIpXqmQVUZJqQodg1jA9WhLomw2F7eu
	uI4HcUNvsEdyFIwHHnTlamaJylBcEmqXfT/CUe7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181623b4090-c4c43703-7554-4d64-a5dd-cbf0c33d365c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e7aa0e8715b5bdfaed44160511ac01f71292ebbe1b112a9cf0e3a776b18681a
Date: Tue, 14 Jun 2022 12:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655210459
