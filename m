Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4249F7A
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660022452;
	h=To:Subject:From:Message-Id:Date;
	bh=4T/Zvv0nTgcXM9KGr0sps8Uq9b+Wpv5PEIr7DVPxjfo=;
	b=HywBJLMe8cSiDx6Yj6wUWZnWbgnZB9yLwevNdrS9KvzyyauG81U7hs4AKcxLy8ex
	jQ1Z/UMRGRNpvednMQAXOfr931RrSh1Z0EFjHoSlx8v0zP4ADNVeXpFo3sRtfQvFgtD
	wi65JtkbOKUR4GIwch+EqlzkJu5dUFU4M/zpE8oY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660022452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4T/Zvv0nTgcXM9KGr0sps8Uq9b+Wpv5PEIr7DVPxjfo=;
	b=QkEMB1eqvUXz8D2oJ9G5rhmpUJP6eN0S0HpsXhZzciyc606YztezW3jcZjwUCp74
	rLB/vdGookyYbipoq7e5rBFdv1QfU0EcB6dmk9xYNAK2089UAVOufCyA9wORvykuDjj
	1CFq0VOAlfyvZlUWZjH4GWX0vEZ4HIc6mQxCKLLU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182810c7150-f36afcd9-cffc-454e-81c3-2eb7d9d3551d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c52f58f0805c5e63954017fb99e87607927f1184794eed8d7a68388cb288c9c4
Date: Tue, 9 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660022452
