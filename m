Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF6F1383
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 20:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651954738;
	h=To:Subject:From:Message-Id:Date;
	bh=/LGdS8r9WV0qTxu79L5ePNuitlI1EA//exSStRUYE6s=;
	b=dDcHboAaPv1WOHA1qSLJs0lcMba5Jz+nDo41Sc9hKxjQWL90Q1qVuSEtyPNEk/fg
	LYhdYc1sxjTDy+9AARgncfOtnzg4kfal7IEfCVJNHl8EUqeqhtbjAdryggq5q65mNEa
	eGZIMXBPPUcXsendpYBvdXvmFle0pGSombs7RjCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651954738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/LGdS8r9WV0qTxu79L5ePNuitlI1EA//exSStRUYE6s=;
	b=YV1fktfdmQa8CiwgNqhJFNDLmrRqorxshkitNrHP8ZPIuXk3zKqQ3I1Pd6j+9fiz
	761U0w+JzqzZumW7jhyH9xeWpgMYS5cdukrvrceEZBRJpyWIXiI3dtotj0ayFWz3sRK
	7tuEx6id75TKAh4sYMTEWY+BCNcfKRO/WhV740sA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a02ce495-1ba4ba1f-6d5f-48ee-9182-e278f99aa90a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6942c40305594f5f778194d8366f7ddc77c49afc8e90050937d94cf553e2f082
Date: Sat, 7 May 2022 20:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651954738
