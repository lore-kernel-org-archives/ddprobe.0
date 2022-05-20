Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF237E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 07:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653033239;
	h=To:Subject:From:Message-Id:Date;
	bh=av66jdC2UygG0n1CtmrXiOCQXzqMc9dCczKHgY+sNtM=;
	b=lheCcElOO8Rurh2lkhal//BkFIWvq+5qtLyE6aTedHjNhzXpkCttfXnC21N7YNxq
	ArLjy+Sn3RnwJjdpM19KNKdAyU5OylPDUgFdi58c7S4TmzwiQZw/K76H8c0mRhgN7wu
	XocyFV1FhFZdcjw6ZlwNH2ICh05ur5HCIYBSTRGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653033239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=av66jdC2UygG0n1CtmrXiOCQXzqMc9dCczKHgY+sNtM=;
	b=HfCPoC6fhvUzyrrJBgOEVqYlRpIBOgGI/QD7PetEczvlfT4WKX7VGjToxc+dZlvU
	6ftC5kV9ipLN44qD5v56bDvraamreDVzcyG+PWqppEC2XFuidX3st6UwepVQHJkk5+D
	6/XgV8EuhVkSO9aGFT/KID68SRTS7Pc66xqvGbsk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e07582c1-6c8e0c73-8a06-4921-ae2b-ff1454d79819-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f05af3a06b42391ec6a79e85fccff3a559e85fca322c68bb0b65297a58e7b115
Date: Fri, 20 May 2022 07:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653033239
