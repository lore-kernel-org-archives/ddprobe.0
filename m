Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB5C20E0
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647711384;
	h=To:Subject:From:Message-Id:Date;
	bh=AhXBcadAAF/58oW0Q2Z2Eav0WgvL9qsiacHxK4DLMDM=;
	b=N1d9gVbcE4pIDgrFHO3/QFfcUJmpe12rbq0yg0P3v3adqOPyvNGAZsWePbQ39cto
	h2zgvkUcNlxE9Mny14UTsXV9wR2KHffKh3vWQsGkEFBDIf4RqpGXDRb2aLo7y8OyCk9
	BxBTVrnlFfBFjB7CwP1jA4indbWOIGWrM8hZTK/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647711384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AhXBcadAAF/58oW0Q2Z2Eav0WgvL9qsiacHxK4DLMDM=;
	b=aSfKEiOF7uG+HkNyR+Ad/PUGxE2M/73PMGfM2NMH0Sv7XCx7x7zckKx3YGLZ3AnT
	Eb7sLB2C5B/k0j8gtJJi0nyQ2otOvnxJdD5W4UiXqvcVsrgQ0qsVwPm1CUvFHw0akWl
	qECGPqYl9LNuoJOMULWo5HT6tSpDNvB27+aHIJrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa34074a7-7b7d8822-a441-49d0-8c14-9adbbcc97646-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 799f4fc0fcddb1e8eba8acf77e8e838374cc94563c6a9bf86afe2b6de40e40ca
Date: Sat, 19 Mar 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647711384
