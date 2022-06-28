Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284EB4C98
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656452212;
	h=To:Subject:From:Message-Id:Date;
	bh=JXYhV84fWv5QVBtkbhFDNQ4NeAYPnjoZghKqEjQ8n10=;
	b=ZpGW69xNU6su3cuWmyn7SGPl7FCdusTRWHZybRLYOUJjQtXrIuEATJ4baQoBFLrH
	ICSuUGHQ77uOreRAUIWcI79pic15Af0Gowd7puX0634YThSxN3Ob9mhBy1Ts6V2xFgT
	no9rsE9FX27NKPLfW8BzT2jd+77H8IxacU2UbETA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656452212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JXYhV84fWv5QVBtkbhFDNQ4NeAYPnjoZghKqEjQ8n10=;
	b=HlVnJ40E6kNVdGIsCr30h+NgZWYiFD51AloP9LsOHP1KJQUX4P5MehyFugNqw/ZQ
	vNXdpW49ANCBukxvqfVTOl0ydJwQinubMiH5yESSYcV3EWIrmyRFGh/rMEvxC9EihY7
	bcw5G18KKjoDum9EM9VnCd6nKVmBy76Wf8ROFsu8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac3ee65b-a96f58e5-7419-49fe-ab8c-ffd8bb592e5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78f8c47a27c70ae9b9453773446f44110744050925382a17206cc56ff84f511f
Date: Tue, 28 Jun 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656452212
