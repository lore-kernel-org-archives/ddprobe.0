Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB447A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 06:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644821445;
	h=To:Subject:From:Message-Id:Date;
	bh=1ZAXmT44imI1o+/6VdtxPyjK+HQdw57jT8rB0kz6azs=;
	b=bMfNsWgv7NgmWJxNZndybN6w3zbTDUbxGAmRTA5Ch/kr9sLN1glKfumH/go7sw3j
	22S4Zzl7lJtNWenXibFPkAOjxlA0ijPRQqSQXKSVvuHE11EYiSNWFn7nAF2vBUdF8eJ
	CbIut0f1LedoLVbLpoAHLqlr2h34+nAucBMbfxxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644821445;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1ZAXmT44imI1o+/6VdtxPyjK+HQdw57jT8rB0kz6azs=;
	b=NmOzxJczsHm+e0PdiZgn4r4X25g/uMob3UJ2JzvyzDGqTq3ITTFKw/eUfuOHKR13
	z7b3aAmJDiDtkQ2tTdYsB40Y4xTPnp+AlWu1BOgHoxgwP8kGl2xINYNI47WTPDZIJc9
	EenqUadusmj5GEL5BDxXWNEBWGuJeW9hX/DaHzqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef6ff79dc-6216c6db-1a2d-4eb4-91b6-a76b04813274-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 315c2b7b2d69a17c39e586d17c82367d8bc984244411c353d5eeaaa8b1e0c76f
Date: Mon, 14 Feb 2022 06:50:45 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644821444
