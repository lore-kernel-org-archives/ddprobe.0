Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C52F7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659456652;
	h=To:Subject:From:Message-Id:Date;
	bh=oISy1SE/q0Os857CaZ6PG/xrCW1QpMTAoyjfw7E5fs8=;
	b=DSF3+aYZ9fKGvX5rMteCH/QLfJNPvOox298p+Ib/XEcU2yvIH2K0GTXfPOUopL8D
	tyBUKTGreRULgTDd8KlDZMH1Ht++3MibMKF4zn9Q7I+3II+VvoWz8GbD5GxrQNaPBB4
	4gkaWIPanXFvC9P2f4fykM40iJO1BXoOPWJQ+Ln0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659456652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oISy1SE/q0Os857CaZ6PG/xrCW1QpMTAoyjfw7E5fs8=;
	b=fc5tnpvQti78YdsAEXfJsbpucfT8CbFEJM37K2311aFz9gz6UhPcqLpJsyUW6lQG
	MU2wWWN3fDeMsuShudf7F9DmtsKU9htLw/gRRM2vkkby/yGfJ0PLFdpKFoeuV/kEbyE
	gd5JzpIvYDisI6QzWh5ggLNSCE4H42fQSK57iKjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f530521-d0767f3d-c5c6-4ccc-9927-0ef06b277a6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6147dfe3ebb248e9cdc21d26fb83081d299e2140610c0f469a3fabc16859b02a
Date: Tue, 2 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659456652
