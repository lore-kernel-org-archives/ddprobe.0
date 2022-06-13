Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175CA7A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 22:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655158559;
	h=To:Subject:From:Message-Id:Date;
	bh=dMNT8sYljJ3vXsZiW2Z6wkoolDRcgwaEPwO/2pbpj5g=;
	b=RsULuEPid2E/Tarpvuz1LojwCEnxngubSzrfUx/GuMCFPtoUpGfVHgjPEdCZM9rS
	96/Mhx4M+IhejXrrfQK3HjrcP1+TDdCZQPbTqHXbXh60YSVpexzk8YfD89BRfHsea+z
	kwkjm1j8mmvodcjaZrAPDcI3aKTFu7vy8dGw+bFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655158559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dMNT8sYljJ3vXsZiW2Z6wkoolDRcgwaEPwO/2pbpj5g=;
	b=bBXl+i70CvzAGf394K9OIn1lpbVi2BkCu8Vj221QDb2nu5LibXcaSUpjLMN3JmVq
	LKPHpx2f7Y4+/bgeah1IGOVYC3lPN5TqjfwFtT/7YjQqAIdvKc2CAL7wq/uaq1ZkXA7
	QdjxI4tx9ENmJrY29LOOSPLi/nlw0zFEGB+EAndc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815f235202-8696ad8a-da5d-4d3c-a8ee-ffb55494631f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59eb205f536a8323bf75bcce36c1fa12aa16c292dcf784cf88fb57a3557cd354
Date: Mon, 13 Jun 2022 22:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655158559
