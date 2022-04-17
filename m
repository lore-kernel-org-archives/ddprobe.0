Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060AC629
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 11:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650194818;
	h=To:Subject:From:Message-Id:Date;
	bh=tlxWIjlo8vVxSet84eCGJR1PcTX2fdRHjlsYA1SffGY=;
	b=TpinrHNfMlkDAVu8M9J9dz/40cyQ9nxiKlPAJGfXtGOpzq1z5zJr7O3hcBZYu4Vr
	wHCes2JU8mlwjv3KzD/dHYwdHB68Ll6slvuvX5jXgRY5AVdPiXGc63Eo/vlWLrnbMNE
	gxbVC2ubBO5c9CH8NRzpUT1n38qmG94s+44xV65A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650194818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tlxWIjlo8vVxSet84eCGJR1PcTX2fdRHjlsYA1SffGY=;
	b=NLg63r2xedJ4AYBqpeCGgGzqFWPtUBb6NyqovE342oiEYE//lckRU9lKVNDhbpLz
	w7xDNVfzA9VPCCV074Ga1tCQuakSUNZNcS7Jh/pZawff0Qe21oas4k3cnz5kFb3/kE4
	rTGLZIppbdmh8RDQG3BzqQUlyq8vHb3nrqjIdtu8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803746a510-3650f9e9-e2c1-434a-bcdb-f0db22f332ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1516ba85788a476ec9c03ea149614e8fb87711cc0ba4ad4d0a8d3e8696925de1
Date: Sun, 17 Apr 2022 11:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650194818
