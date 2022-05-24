Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE57A21
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 14:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653404099;
	h=To:Subject:From:Message-Id:Date;
	bh=o/h28GomwtlR+NwsXWt1gHaAWaHISJ9CjcxGbhlqTZk=;
	b=QQDmAn3/aCdKM06/bGkWMZ1xM8xyMgVAWAAqTU+rL49pJ7omXhharJPMMkdi1VoU
	Dd/Nuvmn8AfBWheh84nz/eupz2com7TvjKR6t+5ob5jJCxjBjIjwLpEpGU2/boeD8iF
	6fnJocnU+9sI41WPlrlc+mrl9BJI4udm+Rf1Wdr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653404099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o/h28GomwtlR+NwsXWt1gHaAWaHISJ9CjcxGbhlqTZk=;
	b=IrnSkdbRIujXk8R//U3HPyss0COYCVdeVZHA5+W4PqyJ4qdyaSAB/Fts44rmPDpI
	bVLT3ezBod40qcuZLrwmUgvFyhzTx38dGl+SvOkrZqWaTcPwbiJdqamwR8bKaN55acD
	5zXbhldKMQCghmD1LxzCSM+4M9VtE6DqzWOm1SrU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f69062f6-c22ea30f-80f9-46ae-a608-d5903b72158e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d6c9be6a3bfd574dcedcf19e8801dcfdd9e827d8c0f797d2fb16ed041c3582a
Date: Tue, 24 May 2022 14:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653404099
