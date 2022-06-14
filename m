Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C402567
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 22:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655244839;
	h=To:Subject:From:Message-Id:Date;
	bh=HrAg6pv8ODulBEdps5tl4m+xnp2M6bzAGd5kXiIqA1A=;
	b=kJtHco/WrsIfh1noqN7y2iZI9h/YuL7ssggYA8/dkLEO/J7AbSoirIBt7FRYob5t
	LgODBayUuVBJYY8+xp99J6+tSp6BWZoWmsirFaRB31mwrGWRTJTmC2Hb4ata5DtL3Pv
	+ssrhpy5trpZw1We62BmQqrWq00ERSagIGY9Lg08=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655244839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HrAg6pv8ODulBEdps5tl4m+xnp2M6bzAGd5kXiIqA1A=;
	b=CYEFG8Lc1DIufC1S3OCORwJ/OV3TcEnLQsl4e4WMHdTpijWid+u9XTACxXbTYkWI
	X5EIleKpPQ9hFBPbkkPFZhXHXPHy8hXCemgnAQMnt6B8x8PxWfSQYG1K2RVNjy1uS00
	jK21zu0lbi3b3zsUpKynx8HLCNSy/o8Jrf4pCMcM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816447d958-45875bc2-14c2-4672-afcc-2b427acf2f1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf6cb58c15553475d699a7e7202fbff45885c94b9bbecc23759dd92c90c7e13c
Date: Tue, 14 Jun 2022 22:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655244839
