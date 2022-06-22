Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C01F139A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 13:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655902921;
	h=To:Subject:From:Message-Id:Date;
	bh=rnWSh1TG8u7sZU6GndFFArLXk342xSRQbDNl81/abss=;
	b=eUd5ttNd4c0qF9JK/PdpqRVd5hmYc9KuhA+1NHMjJfZOO0bbrXYqes0u5NvWMZbU
	9lvLh3Sh/oWC8yaOxfYYvMiVZH/fjOfV7ImUXO7pAc72VO5p6HLdDGeCJHff2KxKOGL
	xlZhlANT2d7txfVhdPeK9gjTfXIKFT7ioQrMmYd4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655902921;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rnWSh1TG8u7sZU6GndFFArLXk342xSRQbDNl81/abss=;
	b=P8hPjSsDMJaZvFCEpz9WN7hh3Z8Uam04+mzOu609Rdao1pECNeIzxDmg+JU5tTsy
	vynRydQLNDNq+wwwU2BPPld7W/PyG15h3fwaN6gZLlagIDDyxfODbxW2iVOR2hxMPYs
	Jt4VcoNqlvGYz1XRReN0VD5dZBaXCGGKvlBOebzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818b815a5d-1b1500b2-c2f3-4e7b-9c6a-82183032f840-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88ef120bfa05daa03070b323887e975dbaa14752f52aaecdad15cc9a53341e1d
Date: Wed, 22 Jun 2022 13:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655902919
