Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEF37462
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 18:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656615412;
	h=To:Subject:From:Message-Id:Date;
	bh=wqwwh2sFuwKbuJR8L0SZ8TxWDlHeGBgliM+bGDJS34Q=;
	b=Q0HyXdRSwPOSoHwktS9lXejlVX1unycNTIboruvSxOVE085lzucx4VTEvjab8ITa
	dAFBtmDB144FDhOoj316hl7a3AkthTtwwH9Zy4t0H4siVC8XobomVUQUtL2zDdQCFPs
	+afGOLqQAaVH3asDa+2uiQvE52gXhoAGNA0JEtmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656615412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wqwwh2sFuwKbuJR8L0SZ8TxWDlHeGBgliM+bGDJS34Q=;
	b=emSGUNmZ2FWd9KgGAcuqgw8A4pWF4nZRs31izS1blivoNdc9d5DpgWjBvTkevH8h
	A3XFGZAzOrMfWhlmHfdWAb/oE/aDpbjE9f5luPlX1nXusid4q0dufyYLW+9Q0ndVTfY
	hbIyPVedk7SFv0mDb2Mutuiha2ZiLB4AkcbltcRY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b5f92230-52437ad7-829e-4f47-aaf6-50d7c55329e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09554275241c199aaed6a91e23371360af2ac388e7ae554e9286fb1a67a44d5a
Date: Thu, 30 Jun 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656615412
