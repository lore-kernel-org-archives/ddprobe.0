Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0767469
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647297684;
	h=To:Subject:From:Message-Id:Date;
	bh=Ca+QsIz50lyAfzlT0YqgM2JlQBhupiSb6ibPnHV1KpU=;
	b=MK0zFj3cBDrULqP5TviMrDTpcP+91RPMgtOBXCGFr/BewWavhONuCA+EzMMfroiD
	h/DTTb9UhyYgm9QHDjSb+ge4lqndiILJtwzadBqU/Vrv2WnPkorNbg5hHgcKkh+hqfJ
	Hv8LLknkuBBUs2uFRRIt/FXVDEqbbP7ZjZFdj5pQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647297684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ca+QsIz50lyAfzlT0YqgM2JlQBhupiSb6ibPnHV1KpU=;
	b=ZKDcyL789cUyCywytSypbBCpgIgepr+OQu+qdzD4CgFNzmPfLif49iGlcrr+w9em
	vL/tNballTrLywR/M/637WI++apOhd3UPJdRNV4RFIspYNx0hz1KitzkpBdB7Tk92nt
	RyfGvbuqBABNSnt/w3S3x0ll/MRBTXoEswMWdH34=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a97e519-6b45be93-5999-47f2-b6fe-d6e4d3bddcdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff1e7565748174d473a260c2d35e8ae7b9075ce39ac54e64e1948f493d58dc47
Date: Mon, 14 Mar 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647297684
