Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B72D48B5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645176985;
	h=To:Subject:From:Message-Id:Date;
	bh=l+C2pvzFGJMsFlTn7FAuhnekc3UdFfilV5UThqEQ2h0=;
	b=XFXlBTAw6OpbAZ26FcLn7Bk0bDDgODtKkEHVy0WuPri8OPWVMTAoVYOXGXKSqjmG
	XUDzYPLmsuXF5r4aQaHnclDla00ymCPSxY9lYYsSV9hTmnXwkcKNSOU+B7Xo6NMpN/g
	FPNrYG7+JGoB17LG7W/R5xkY0H72yYlLEVYMHhlM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645176985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l+C2pvzFGJMsFlTn7FAuhnekc3UdFfilV5UThqEQ2h0=;
	b=Vaaie3qePA7fAAFJL8yGItS1tXhntCsDz0hc8mtK/U6mafgwAwmwRel9nRjtMQNn
	vwhq9kxDyQzaJ32RwC1giF+G9V/A4OaXlMrekL8WyKrLcL5pKCCaVga0XKXWzWy8AM8
	/MGB2qhuH+OV+x58r0yTpdMGmQch3bEVrysyF1L4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c309502-1f51e92f-4d09-4b24-a702-148133d5a683-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11d7400deda73c6697c001698c3faf8e1949fc318e6c5a84bdaa9a3d065054bf
Date: Fri, 18 Feb 2022 09:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645176984
