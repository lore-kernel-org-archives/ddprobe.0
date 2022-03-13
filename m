Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E7B7A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647181885;
	h=To:Subject:From:Message-Id:Date;
	bh=5xQ3ELceCiwxdH1pBlcEgFQwiQ/xfmA9fI2LMxOSriM=;
	b=R8yvucTC2kA79rRbMLJ1wTC3f+vO/I0BKdFKSuy7AkNyIl7qrHUkd1IUTIVoIlDJ
	/dLO971F6CigBwH6a7eFCEsJBugY/n6ppZ9G6AJsv5+uWgiGTBVmVxGW91De7PcD6oC
	vKE1u34lGjFsGgqMqNMeE3HgqmLv/1u3zWymUCwU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647181885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5xQ3ELceCiwxdH1pBlcEgFQwiQ/xfmA9fI2LMxOSriM=;
	b=WStmtM90bBCUCe6ZTENhcdMe0xomjG9ZIBD37U6cskHVgy/8r+hj5sOusjWlqWJw
	VuwA8PedoLcviq0jLfFkYbR7qsPUW3Krzz48/g8192hH8QZ/Q2RlKaDy5S7UcdcslyD
	tcAiRaeFjxLSk10j4JDL3ZDNrovVFdf9j47hhlOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f83b0ed3a-0fce96d8-5d64-4bb2-a45a-a2068cf0f731-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a6d9addb29a2bfed2e6b10cf6c5c220fc55af7923005b84f979c8b6b707ba00
Date: Sun, 13 Mar 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647181884
