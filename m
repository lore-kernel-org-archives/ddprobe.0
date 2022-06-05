Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D84A4688
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 19:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654456439;
	h=To:Subject:From:Message-Id:Date;
	bh=Fwag94zQ20VlT0NHO11DXr3xnLUG4P4dNSYMfiwHW9o=;
	b=JUZJ9LOJmazKjv7BVxuN0cXhebzAjx8t0WpJA5NLuF3flPCZOF0UEVmnIT1Jw2lZ
	d/RJCQ5AfLuaC2Uig5V53sPpuEdVkFSR3lHlO0nQdjs0SSP/1db/gY0FnFqEqTvhirs
	Y2UV+PwGJmYwUJpnAwFSaWu1vydpFYxVU24GHxh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654456439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fwag94zQ20VlT0NHO11DXr3xnLUG4P4dNSYMfiwHW9o=;
	b=J4ZmzAED0EPJPERJ4YMmuzrmmukSEne6hPtmN3hz6DMCIggZrJyn7AtJZJ1J2etu
	GKEt3cezkU/sjhrxd7FZv8mza6+BIhbstuVxdtL59VyN+TMJiyl14ivHGFgzHVrYD8s
	mGWnWN8CuTOEhC7iDy39HLztaXEv/ZZzXRj6qL4U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813549d1f6-f99087c7-72e3-44bc-9a1d-f32128fe58ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9349694b8d761a3e6c7212562700c4c0e270306aa15ea2c20900f882a1cfb0a4
Date: Sun, 5 Jun 2022 19:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654456439
