Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4AA5C62
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647218485;
	h=To:Subject:From:Message-Id:Date;
	bh=cfmjLRjS1bS3kZJK1nT/O3r5DyUQYGDqdbWP9JfUyQw=;
	b=AKPVkDlS15ngDOQatgmrfP//rTmDlEnMq4WykhNN66/OMV5Gy92Q+NzsFFoKWvpx
	9x9CQnUSgOCYjYsp0aqrk5PEOlbbOUNpz7BwrMx1OaLj2v6b0bgwd/Vr5+kehkBDI+M
	PM+/77/vwyJRP9UKfULsi6T13IPS1CMaoCLZG5Ns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647218485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cfmjLRjS1bS3kZJK1nT/O3r5DyUQYGDqdbWP9JfUyQw=;
	b=IyWNnvuJtkm7SMijv1OYPZXgcv0U07pDVWJo9aJ2oyPK2F3DWIyNAf6FXJWH4oKp
	C9Of4EZAzc2B0xoR9CYbqg0OBndN6Jv/rNEEgfgMNuvrwvdIKH/Ywgs1BmHXWUz39Eg
	YQ7WiPpejv27n8Sd//oMcvlf5DdWQS7OjDx+xq4s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85df6646-e6af33ac-bd8f-46d6-b478-cf8f3b7797f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8125a0aa2030b7f477499b83fecc9f11abde66901cf3ad974a0a2182f4daad81
Date: Mon, 14 Mar 2022 00:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647218484
