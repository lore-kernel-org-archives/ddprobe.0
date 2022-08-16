Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8606AA7
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660673452;
	h=To:Subject:From:Message-Id:Date;
	bh=lusNMvNRyWso0CTZwoeAGCJ5V6W2dWU9DGKt9yXTDQs=;
	b=fJBGl8LBTdNsQoStqU9tU+PgorTIwHwCdcbotWNj5giIi7n29y13u0rEErpL4pO7
	kkcDIVnJui2szWbJrSXCCdX4grRWUtvaeDJVw4PJ4ac+E1kLDwXd85fERRslZtNhPFi
	KQjg4dpe0D4xivoLq16yrOScgNGy86w04498etr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660673452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lusNMvNRyWso0CTZwoeAGCJ5V6W2dWU9DGKt9yXTDQs=;
	b=JL9Yl5wxQSXronvKAelAOVokLElR3Ch/N6tHdVBc6/Rs7lhRsFOEFM7ISbkODozR
	xpMTgWMYRGQIMItPJX4Ic3v0AuvHqhqYP5m4lAsRo2H+EORtsKAey+rvZhBQn0mUQ2M
	SUsk9itOG/wMguh9rDHKOY9VlEbJa08EobU1oBws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a7d9ea03-00140f61-19e9-4d65-b4cd-4524d14aecc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d7390ddc50d422dab6957b6ed5e856c0e59f9cf1d37e39ad04816206ab427f7
Date: Tue, 16 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660673452
