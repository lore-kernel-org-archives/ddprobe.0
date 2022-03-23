Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560A01B72
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648052484;
	h=To:Subject:From:Message-Id:Date;
	bh=tt90b1xrqdGmeOE0grUq2Sx6EEKFK0o2oeNz9ihVCG8=;
	b=eRWDkurJ0Mo5buvVjff4QzFAmiTp5b8g9SO/VEC8xkCGDP68Hgpd2moGz855LP6Q
	zyPbpSS5AN4MZ+66qr1Eq9QwmcPBXBBWC7tFe01cq2xs5NpuGNiW4xYmol6dorlOiq3
	zhtw7bUb3sxxgOhAd6sVuoUduNm636jcbOs9xYd4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648052484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tt90b1xrqdGmeOE0grUq2Sx6EEKFK0o2oeNz9ihVCG8=;
	b=d50+fQ0aLjp8LUx0lXYISqW3XwruPQwq+LckYjt0LjCak5N/7Jz7oUG7w7r3RB79
	+4W5DUgQ54EkYZiXO3JmYn5YtdD9gbBCuajUnG9DrygeLsQ/xtTTNIEzHaSwQpOkigt
	SvfsQTGDF6B9r3zkE/JMjuV8dPJdfVfYTSFseQ88=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7953aad-675db3cd-e92c-4a9c-b447-530c5f1c539b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6eace3ed104bc1056d1355e2f1bb1299478752827aa4f71a94450073d57a648e
Date: Wed, 23 Mar 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648052484
