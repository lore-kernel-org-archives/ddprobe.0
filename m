Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBE14420
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657560412;
	h=To:Subject:From:Message-Id:Date;
	bh=u+onOc5XY5fXy97TE5zCPUaqsVRu+K4Ybfmi8EkOe7o=;
	b=FV/Tnw2yCokWyyhoBTuRsmluvwaeyDTTeBOZfg9Nz2gK0j7YCoDtBNpUwBCMVrCp
	U5AL7fVw7hIqbsg6SuhpHwqQ58vozNeH9tN+HsI7tPMCo3xxDPqttI0eNB9t8DliAze
	QvYGHgZDGT14KwgNusHYi8lYlkJz5C/TGlNAhF6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657560412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u+onOc5XY5fXy97TE5zCPUaqsVRu+K4Ybfmi8EkOe7o=;
	b=jGyd/2GT9pNxP9Y6NAar+xHtzGjxc4cqBFnJBqcm51hBRKHUGF/7tXrpByFD9pic
	ojinL1lv8fY+UFyXPKUvvEdn6B6u4HRSPmaQTNidVPQbhvZCa0SuDeuywNyCEhp0mgW
	qlKCtmyZTUTdIk7aovIHrWTzNj7tj6Os8IonCwLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee4cb0cc-2123c3c5-d368-4048-9577-c7b27903586f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d20f2db7b09d2887f5fb42a86af5a30a8bae9efdc6f3758d2e29da879746887f
Date: Mon, 11 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657560412
