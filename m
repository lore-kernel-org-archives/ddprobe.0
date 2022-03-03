Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29FD36B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 19:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646337085;
	h=To:Subject:From:Message-Id:Date;
	bh=VwZJpVYm8zRf3jykIlLZVQ1U5b8Ar4Q3ue5UMqzzOpU=;
	b=mtVCY0qJYT/M4EsOSxu0r4TM2R0bYE2nG9oh+yfJQj3Ei/hrIQ3kgZLnLYoReWEw
	iXd3HwJIPgtOwmBQFPQE8byGJ4f4lNQFnjHc3m27j8NrXAe2mauULgizzf07avs6Tbp
	soU5THP/LDrSrdygr7igawIWq/rifKYoWXqXEUSI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646337085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VwZJpVYm8zRf3jykIlLZVQ1U5b8Ar4Q3ue5UMqzzOpU=;
	b=LBUjsh2VyN0TIBtcffzF0N75wpAqZaViB0w4HKWJn1zElmUn8su0guNMnglBNY63
	d8Lt8TnoowWeI0y0KFK02ji7iDTopLpY0VpMqzWn85zHipOWseQt5a+M4U30xY1pGj8
	sxpjpCAMuoyrngTktfpSyW5GQvgZv94i6vmCE0d8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f51564d3a-c696c25a-d08b-4efd-af2a-35cfd5d7ddec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a917409c8e5d9419a9e9a9669c1a1f8654abf1a27f794a93b2bfbd6e297fd09b
Date: Thu, 3 Mar 2022 19:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646337084
