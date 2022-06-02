Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6453237
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 20:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654202999;
	h=To:Subject:From:Message-Id:Date;
	bh=IFw3npXPo7fOQG59oXB/JQYGnFhGTWdNrVUMtrby7Sk=;
	b=KEo/hc3IscBdkjFBfNDdq/1F/Df8EXYe30M1t4ov20UzGeDwi1bYSvfh6iscD/Tv
	fEXftwDqvKNZOEawNuq2BSbO8zRfz1EaTblPylBs77pEGa//YxsUDphHQqaDp2wE5p3
	46ALqXQHE+9+//w2epkAgPhOGiG+1JFqIy/5a4J0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654202999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IFw3npXPo7fOQG59oXB/JQYGnFhGTWdNrVUMtrby7Sk=;
	b=A1B/axhU20emlanf6zx4Yxayr4tGTsZ6922cId6SRZ+avmGt7sdAGqrIjbSX+VK4
	ltvsdfrq1ZmKs7N0VCAWg1rk3hDehhyJCtb/KhWpoRwnmeWEo7XVjg5KoCGDyoz4oTd
	m4TEU/SINiX9xn3Fc/ZA4dp6dUpWihYOZsU8EacA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181262ea1f8-49df1a06-859f-4ec7-8dfc-f759229f8f4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36644c8d1cdf9a33caca5b4ea4dd24f58e0b166e361188a3955e58fb412cfd14
Date: Thu, 2 Jun 2022 20:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654202999
