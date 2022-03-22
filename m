Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A605622
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647917784;
	h=To:Subject:From:Message-Id:Date;
	bh=WSDoPZ5qXQVuxL3P/Z4s6gPNbuRzHQDtsS4S/YplLKg=;
	b=m5w3Y+7CQY9LgyKJAU1PgNehj8yzJJAyBFNk+odwt/bTMEU0pKcppgFGFOeqboaD
	XipuA6mX11h1/OgUfnc9dcFlSRKhznZzCLkv7me49Icsa5rNSGxTRS7oJnmJjLMgKr6
	MD18/PIRFFFLj4PRnTTd77hIOHf+L7ITgbo89EwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647917784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WSDoPZ5qXQVuxL3P/Z4s6gPNbuRzHQDtsS4S/YplLKg=;
	b=KatkziHORzZyPtTI51DAw/bvgb1XZJ0gVNb8TImSB+7KiY8gdM3cELEx7zy7zYvZ
	Am1dZO/ztfnwB20azqSV6JNtyaV9A4MluIK8H/oc1ZKOvCf0iYb9Gfuo7OQYhQyMK0m
	ALO12Ac3Pwym15SjDDPD00SGjp+uREYyJqFvjQf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf8ddec7-d0d836e2-d352-4622-852c-93b9343a6d21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9ab511003cc10cf0ebd80f5e3ebd0c773c3dac7846fcb30dca8ca509d92801f
Date: Tue, 22 Mar 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647917784
