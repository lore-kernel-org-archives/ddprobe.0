Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCB07F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659381052;
	h=To:Subject:From:Message-Id:Date;
	bh=vvqYPecZnkALXWsUii6ET7T+klMPKYLxXOdn2wI1mbs=;
	b=VnK7RvoLCtHOUEYeud5z/8pzH5A6jA0D7cAzxMjeA0RvA56+v4+VX85oGBwkKrEL
	oLOqt7m2DstzTuOKIi1266LkpZNJuP0ER95URciWE3I0UsrHQdYlu79cs5KJCjx38I1
	Rxf0KDI19w5jwQyuuY32R07OJZug1WaX2+sdUdO8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659381052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vvqYPecZnkALXWsUii6ET7T+klMPKYLxXOdn2wI1mbs=;
	b=IqnWsgyh7ucrBaL+qGNcN787cMOnLvFVz8ulq0p1cSwdNoSE7cDXMo5LL9UQlTgi
	cWHWkYpgsqkliNYmm1NYknC7VgfJckg/1wjn2GBwgWlADy/JbqPxXRPYBzQ/WsuDEJD
	fRDaxZZ+67eJfLzgpcwruQsu7qWlj1sRuXlY+ljU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825ad17487-911ca145-de78-4d6f-b605-eb38c85b2b0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52465a85489d646a93feaef0b9a75f4575992e77b607aaaaccc06e32794f6fef
Date: Mon, 1 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659381052
