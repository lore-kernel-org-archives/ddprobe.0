Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEDA20E1
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 18:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655491679;
	h=To:Subject:From:Message-Id:Date;
	bh=fIDGX5ohObg7WOx23ZaVLUCwMMoOOHs4K77kkg5SfSs=;
	b=FyzmlKuFeaQhvcXPpcm3gVYInO40cWZ37XpH5dYRXwwj1nJxl62Er2LlCTIzmEOj
	yUKFt6s8Dv5Vt8Kdufg3TD7/Zzg0HrX3Jf5J2zE++zN5nTVXJXp5TUWUf0wymcPzo8m
	sPNCJUwGeL7g9qMln7Vr5+LvAkqEkQxFr4gZhSAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655491679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fIDGX5ohObg7WOx23ZaVLUCwMMoOOHs4K77kkg5SfSs=;
	b=AJIV4aYbL+uVoJx23UM9yUpfAIODIwnSLpRLQUFjI9OLAnIrgYZYq2sagdm+ZY7S
	9C6R7S1w7I1L6YrQq74sE9hzKF4C/iiuqQwiJP22LfrpJCGGaOsj8Gfh0l1ecSzwCkI
	5zloi+6HZhjaf76hSVuc/uEZ+Z6DD8KpZ5iarhZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018172fe541d-3c273569-3a1d-4a63-a3e1-aec0054cd92d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a24a7ebc6307fef7c82d18648d0b5aadf22aa88da83e845f83e0320c4575e91
Date: Fri, 17 Jun 2022 18:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655491679
