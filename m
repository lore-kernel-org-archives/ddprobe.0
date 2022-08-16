Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0371FBC
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660634452;
	h=To:Subject:From:Message-Id:Date;
	bh=7mllrkInvWhBhnxPxqRwawZnxnDqNNkFKqZkW3Y1tpc=;
	b=XhuxWgv00Pj9iuh9H8+UMA2crBv4xThv+3kwy6cZa8mTnyeCt0qZ1UVTCIgBQadP
	8fy2xWEP1OIlgxOQAwXzmlQuQCjulMA4PYA+rpOjMDXp32Fs8DCvJV0fY174qu/WzSB
	95pq9/46e6gA8o8XI0OBhYkGohmZ22MkpUD98cms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660634452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7mllrkInvWhBhnxPxqRwawZnxnDqNNkFKqZkW3Y1tpc=;
	b=NmaFuxu/67YIqSnaXQA7eb2GD3eTJmoGeiV7XVNuNFFIscA1yczID+iikfG/o6Pa
	0IqY7Ng0twNO3UCAfZyrFdXZ+HIjlyIgrabdwwySujBAirfeEOiymCuDpvP7tWW/uvf
	OuAb4ieH/Hlz5rfO9/7FkG42uvlvJGBU7qYFgoFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a586d256-f62881aa-c550-47a8-bde5-3bb925b50696-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbd0edce769f5195b676b16866bad215768986367375fbf318563d35a4a2fb9d
Date: Tue, 16 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660634452
