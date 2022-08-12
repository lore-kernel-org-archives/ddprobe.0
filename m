Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574C04A03
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660335052;
	h=To:Subject:From:Message-Id:Date;
	bh=3xZO53sBfMrBrJcxVc4UPEkhFNj6CdjGHQJ+R7Hylm4=;
	b=NVO0Ff/HOyMfip1vebFiU7E3E+9dZ0d6IwEhX0UVTPUyCivh/ulwqGu7S8p9jJY2
	n2qZ8Gcd1MdcbKFzVTnZA8Xb1LgiSgHLnBotVQcYcH+qSltYfQdQvgqZQJQf+EWm//B
	Eo6EHiFXfgIGcjq5qUuauuh2hAzYfRaaxXUAhqEw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660335052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3xZO53sBfMrBrJcxVc4UPEkhFNj6CdjGHQJ+R7Hylm4=;
	b=RYhl06HJHGOE5O56rD1MNokA0zVxz/tZtNYC01RYAL2QGfg0qs+BD3G6MKEoIYRn
	49PO8wIcadPkTCkBLvLbxJ7ze8ESa/MoIIyaUbV2K/AStcxzjJYKAyuEiU1a/WyDTf4
	/2cQwE0EmF46XblJp/pXFLVaQNcErDCFfpTaw24s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018293ae571a-ba2b4bc0-43d7-40fa-b797-fc25d9a8f124-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46f201224f5eaaea0dbaf6d00e7cc8864984d10caf92d48bda1e945c36c9c9fe
Date: Fri, 12 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660335052
