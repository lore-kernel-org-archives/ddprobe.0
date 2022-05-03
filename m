Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7B917E9
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 07:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651564138;
	h=To:Subject:From:Message-Id:Date;
	bh=ido0NnQrjFi/o8v6vGmpw4W2N4yc0nsFk9gG2rwS29U=;
	b=EewocGwaLgXsFbcLjf5CtfL5Zpw4hvl9z0NQniiqmpFGKNzkfIcwg1fOGTcEz4D3
	lisalwfvkc+7OXkBIwDUer0kzTTmmoBekLtM6ZfzZR4Cz+NOVnJlxQSiGGlUfFDOHT6
	Ys/t4IG5ANWxKDrW4Zr27dhSmmJLkxBnKA0j0yag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651564138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ido0NnQrjFi/o8v6vGmpw4W2N4yc0nsFk9gG2rwS29U=;
	b=c5/YyBIKaaQs0wqIjzZibYIBg357psV3C7t6ula182OJzPdtax2dv8DbKBg6YvvY
	wRH2bKAuTPU2UV+AbDSnASjpgY/GcT6lzkIUfqvf7togKLiJp4j3ouqEA+bhQcupwY2
	Xo24qtOniKQ2p3eTRpWy4z/v253uwY513JPlQz/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018088e4cf3b-60a6fc72-eb75-4253-97ee-d38ceed9a767-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93edbc297a2a583bf07571a2c2f7138ceed993cf1a3bfb9016b934701e3dbe51
Date: Tue, 3 May 2022 07:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651564138
