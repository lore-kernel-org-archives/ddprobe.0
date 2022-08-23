Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475825C91
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661292652;
	h=To:Subject:From:Message-Id:Date;
	bh=vr2oHthpdpAa6e2ATT8+FcsxERe79Rg1k+Bwzv1jt6w=;
	b=W47U4RvMjjWlsUTA4nfHbUImgg5Job7ROXZzywlPxUEXyTqF9a8H4ReE6lFAChmp
	FgjhA3prlIkkL7vqnt0a3i0JkXCKpEakqNSbMyLn96VC8Kdmk/fUiY8+pfK8Mkr67Yn
	g7x2RVPSUeqpC7RmB5POlBTv3if9kSjFAoN86GPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661292652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vr2oHthpdpAa6e2ATT8+FcsxERe79Rg1k+Bwzv1jt6w=;
	b=Cc86kCBq3eSZvd+rQ2P4vGIZpE63ZTlUkfhZr/gU7hNeAm3Gq5RfBsl4kOnSXHtX
	pcIWU2TBZVjoiRkaqI2eXmy47J+YfbwuuvyroxIPA6oHvyQ8KSJi+eWrFhNX8T7qMUq
	6eWAUbTgw7WSns+rY+Ij/bFGZm9QxJzhi02QiwXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ccc2280c-7efe81bd-a92b-4e76-aa22-36803c3be4d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bdeef570a68ec2713096ae808af6f3e984175f873099139aeda3f73592803ea
Date: Tue, 23 Aug 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661292652
