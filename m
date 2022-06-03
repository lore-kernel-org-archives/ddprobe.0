Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4988FA31
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 04:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654229219;
	h=To:Subject:From:Message-Id:Date;
	bh=vN9TZLszC0KQdMvmAJMePoSMVot/y6nlfmCxqlwI5mI=;
	b=U+jYMdN/DzbZamoOBw8KCJag2NeCFSbLHrw33Xy7JPwkaArBCh/sw6Gz+MMtVivV
	EIiTqXle2Zrh2SvbJIYsK263VfimM5VXk1eVQ0uGrmbXanzpiZy+Vpx5cUUEwAfDJ+z
	GOUMbf5cpJgXuEehGd5XwJbFS8vStAkAgwL4sdFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654229219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vN9TZLszC0KQdMvmAJMePoSMVot/y6nlfmCxqlwI5mI=;
	b=Gl28rrp5wQpMZLJi1JCOXAgRldFVLasZalRM+5oEo4YSdQiMwFxxBFUYESutrGBO
	o4bavSiexEIal0lj9DRVoPUzTqKEMfC/SMIbhvPlcjO0B+LH3oSudOJkhu6osOeFMaz
	w8p26Y69i/91qIlppUCsTKSlAcSUYUYHr+dLYdKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018127beb7ef-f0c7bd4a-5588-4ea2-8a16-1bf5268122c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85fe7cc5c5531d1ceeb57fedce89346a44049af421b198cc10f2ed7820cd3bc2
Date: Fri, 3 Jun 2022 04:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654229219
