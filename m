Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5C615A3
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660012852;
	h=To:Subject:From:Message-Id:Date;
	bh=xd0l4/J+4e1iMEfhU6hjHnyou4C2hUK89Sd2CEAt6OA=;
	b=fJ3MmrlZL65wGoxBru5fQAIKVGB7/EI8p1zP+LrqqyF5IGS69k+PzyaExXkojGGP
	wx+DYKrHw0jFgmz/H4WgqrfZzJKXDgXYwXykh/tyGF3yivboLk5cpvVXUsFP6CCe6yQ
	Ee2AMLLdYdUUnEeKE5tIruFmbe/i4dGYaCa4lo/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660012852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xd0l4/J+4e1iMEfhU6hjHnyou4C2hUK89Sd2CEAt6OA=;
	b=DbcfX74lnzZSdKp78Z0so4VYDp67p+S2RBni9uwHPvVGSiO4cLtBTyzIfiU11kL/
	MdGMzELaIib2S418QZehIUJYmX2T7HM2hMYOA+iS96wBfSSDSZuhmYagfGsNCeHa2DD
	4vUe0w9i4JzcUSXLOMITkPCprtX2isecXl05/PHs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828079f592-f9ddcbbc-3178-4ff6-a7e9-491686d53f14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b2db20dc28043a88befe20a077b4fdbf0b686c32d6d2d8d7dac3898d3b3cc28
Date: Tue, 9 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660012852
