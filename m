Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542AB7E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660556452;
	h=To:Subject:From:Message-Id:Date;
	bh=TioK1gyQznc7WFaPl1KE7V+zK8FLRjFtuLk877XwYLw=;
	b=gmP8yXPLlipUz2tJ6i9WDAMTBc4CUQs/aLDEMntSlrjeTr1P7gOCnsy0xiF7wpTm
	cEylbHM6i/Q2paXlzxk3pXBUwYpC4R/ARuK0sGbHjpqrNy43Hy/s4MTOnYBgdxwYp1j
	7Sqcky3WkR7cQdsGYqO5NC3dlZoGl22m2esaqhGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660556452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TioK1gyQznc7WFaPl1KE7V+zK8FLRjFtuLk877XwYLw=;
	b=fdcVPX+VfB9ZR4KOzIWrjOKNSRhhRvayFYiVYMnwvuFV1E5V6lvXtnIoW73ag8x/
	fQ/CS9fWItosO36UdTfPaw/RQsQacKDebGDqnLHySLTmZznrSMTLHqce6z7SiOGjNBz
	kzSxW13oO0D/TE6cUpVYVXlAHuvMxb9/O1kddW+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a0e0a2af-efe9cc1a-d687-4933-86e3-5bdb103690d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4944de9640d14061664df540bd39afaafc75c1e240316513a9d83d8c34794c02
Date: Mon, 15 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660556452
