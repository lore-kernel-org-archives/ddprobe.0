Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC3A7B
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 00:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651279498;
	h=To:Subject:From:Message-Id:Date;
	bh=TPZrSiTkJK1WO6P3zrvAlCMWmX916b0u4pmGOFcNYUo=;
	b=O/2GAYIDy2Y20Cq/rZ5oztxbu2pu95bYE6ZZUCO0bUs2GN5ust3J8ukSzYZG6MPx
	IVl/Wni0Wn/MjupU6p//0RqNnTli1Mi5HSlWkIQD2P5/ayG2LvCJXddUBKhyYWR+cRX
	RjJPs43Cg7o/SNK8hM6JXQAjjBAAkyZUqhmjzc6s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651279498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TPZrSiTkJK1WO6P3zrvAlCMWmX916b0u4pmGOFcNYUo=;
	b=jDS4rEyLt/dKDKawOi04KD26joJgU8jL6c8kGezxIKic0dyQxk/TVF7S4od2V9d/
	jIK+hx2W9Kas07hegOE0Z+XGolD/ox8G8dIPrEU6tZYYjOfTzNdpAcV47HN8AsZMg6A
	RzQd1/8lN32xqP9wpyEo8wgs8wCOBNlNKbIw3p3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018077ed8bf6-04d82b74-9757-45a8-913a-d1df808cfde9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7fa601a967157d582169c760c7f5d6cffbf0f4d028b88c3cd9c5ab98eb927051
Date: Sat, 30 Apr 2022 00:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651279498
