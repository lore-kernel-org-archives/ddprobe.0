Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8607A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647498984;
	h=To:Subject:From:Message-Id:Date;
	bh=EZ5XHWTbfDKz2dC007vexR8pVvQ/7KBOWBqTo690KdA=;
	b=byOSB2vDdEEEeHvBlg/4Qwk6FXsNBKOrs93B2QliPVBaHSOr3X3x9umKvzcHIqQw
	zT6I0vW/jIFJK872eoHbFgiMNS5zgeXmFyqR9AHDZpX5VbRZ0PSkqWp0CHj7ODPJbzW
	C2ZLk3UBhGNXjndUvcdK+7oJZjVNVZ5SoH7CwyOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647498984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EZ5XHWTbfDKz2dC007vexR8pVvQ/7KBOWBqTo690KdA=;
	b=P6LVMmr7c98/3fhwC6P6D/CCwtaUyievYf+ugmWlHh4fb0lQHxPq46k66/Vk3n2s
	vlRcH0ummNfZFMxibBNO0YFct7tWy0FFe+RCyvj4Z30YBATg3grK0anmaP8Dv/MXj7X
	KRXCmRafyt3oBqLMR8O4aG1RnLPG3BVvVQlokyyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96977d1f-08afb0af-7d1b-48d8-b87d-f021c37e1c4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 336d5dae51ded29b41b90418eac79aa79b1819b03f6c737a09a7ed0101594dd5
Date: Thu, 17 Mar 2022 06:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647498984
