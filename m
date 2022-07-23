Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1451A7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 00:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658537812;
	h=To:Subject:From:Message-Id:Date;
	bh=x6iMWN6MYBTA2UOSdsMf+Yk24tvvHXUMBkNaJ8IxJ9Q=;
	b=U3mCDUQcDjweJoASiq1k06u8plIwBl1kbjpWSJblAaZoReydK/EsY4ZH8R2wWX3f
	jhC3KkU7ksR18lgr8CGdv7gcZ6cm4mfuiHCmWHEOhJLMcLcg4V32yCEOpH2uv9Gl1cH
	Pc886k71Jbjsp+UrrmAwBzVr8ScFaklTK5Rqrs9I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658537812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x6iMWN6MYBTA2UOSdsMf+Yk24tvvHXUMBkNaJ8IxJ9Q=;
	b=NMZaSnqfdbr6Um0dQmJJ8GK5H6J27xbgms4yezB4n/mtS4s/vVrpyh2/FqoynHRE
	xqdREiE7OAcFBZkGxMy50hBBqvmnKTX3NDGakSkeLsDmhEjWzc+OwLg+9iUso3Oc3uI
	Chz9QvTzwgTZyW03PZ4fSzrUrD7DFrZgDmO0o52I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182288ea15c-b20f5ac6-a15a-4df0-bbc3-f6d22ecee4e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ea8ec16d20c5616104b1064aa60a4b2ea1639ab2d67a17f4c0407f94b9cef33
Date: Sat, 23 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658537812
