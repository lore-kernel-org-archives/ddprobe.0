Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8AF1FB0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 18:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655230499;
	h=To:Subject:From:Message-Id:Date;
	bh=kIrVoyqEpocraDTNDfJqgLCwiI+R2Pk0DZIjisgP25I=;
	b=Isgrle+hX9D4lhJCFIbD5UtpEm/b7g57QalvDBT7zJAjJ6z/i0vskHXzgUBFsHlJ
	RX2EchHJxEnK3yI7QyH9VawrVJLCluHlGciYKBrc+nH04yCUM4VDpoWAYPNsSIgT/dJ
	88V62DKa5fqVGLturokptl1QxETcCcXuFA1GsqF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655230499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kIrVoyqEpocraDTNDfJqgLCwiI+R2Pk0DZIjisgP25I=;
	b=FKtbRiD3TJNlCirvl6n/68X5RzDi3Z1QVNa8dpBofJ6nbgysy360t1Bet9M2MRCF
	jhv//L0TKQP8Pu1/ncJV87pJyy80dxm9aWHBwPICzh4QlwfbBnv9S83UIzn8vZSbgWm
	Q3GMSBzl2HSLh0sbDoyxWDvOIUt1rk4bKsUKk6UU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181636d09a9-395abdb3-11dc-458b-b9df-a15156e3f51b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc7ae419158f882af3c04a1a51caf964f2dc082530c7b60f4a4e09fb9c23bd5b
Date: Tue, 14 Jun 2022 18:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655230499
