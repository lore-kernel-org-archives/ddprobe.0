Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233ED48D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 11:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647604285;
	h=To:Subject:From:Message-Id:Date;
	bh=o3zmh6vTEm5GliNWpqeiIYXM2vs0v1YwcfAIfjzZrmo=;
	b=ZJlQP14zT5/y1bIKAEPxQ+G3bDX6UYl6ekV9v8hmV0pEdwjQV2tNEr7DnGOmY6mh
	21qm5yQUHWQUaPofiPX/gS8YAVpQRwL/KGLBKgZyvmHHt3IFCivu4+KLm3jHXmvfBQl
	eRl47k56X+M6b5EB/ToxuPG4uu5babje5JyY6Mo0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647604285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o3zmh6vTEm5GliNWpqeiIYXM2vs0v1YwcfAIfjzZrmo=;
	b=gg0j/SpftGGuxDttHSHGzX2ZBgBhh8wPsOesZF3mNMRZv6t7jB4msnIe0S8VdG/o
	TFNWwW1ZgENktvu0h9075e3vClzZzkb2vRbdes2SOmOGjNHMCRMxWq1AFmJR0P45BJw
	54Z/8puGoZbH0hEC+DOfzmv00bJsRVuVdp3QTw8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9cde3d6b-e082f0a8-800f-4cb5-860c-7ee241ca0543-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3011cf540417ed8e4e759d9868d9f4230ee8cd5f0299351e780f1c9107eb9741
Date: Fri, 18 Mar 2022 11:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647604284
