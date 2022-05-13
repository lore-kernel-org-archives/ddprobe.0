Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC2F2100
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 07:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652425799;
	h=To:Subject:From:Message-Id:Date;
	bh=gvlde9Mak7OFXMoUTOvHCrujupjyfTMhiWOc1SLd6DM=;
	b=le5R04fa2C5uoHkdNrJ/A/fi6kBK4ib1/J9zF7RNslz/+gVNcodXPMuOI03foqz9
	i5pySUc4zkdN5KefOUtMCAj4aTmTV8mmCwnPuHwQprrfEe9GqMug5ULvcOpwu1xLwQq
	YcoV19mh9tjhsUPBEgepP3FShLfyvzEFdYra5bRo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652425799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gvlde9Mak7OFXMoUTOvHCrujupjyfTMhiWOc1SLd6DM=;
	b=d49eYWU9PFIQsnh1q+g1YW6Pf9PnUsXGGT0Pi0EVjucsDNOfwJimhLiBAY4eXbwT
	yj/7oAXD7IjuvRw4gcv0CkYj/Dx0vPlhGtbVmNnDqG4OyRtobptzM9Jm5xEsFtWHph3
	f6WuG+QwGU/i4TJeGmTCr+/JgYc8K9OF0pRCvScs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc40b645-2ef08012-b7b7-4cee-9fa3-1d6aadcc5bad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 859458659b26e1a2b80a40f1d798cf737397f480a35582d524dc0a5421fde904
Date: Fri, 13 May 2022 07:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652425799
