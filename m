Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB551B87
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644966985;
	h=To:Subject:From:Message-Id:Date;
	bh=4kWubirOEmRq95y9tJW/YGP07hPL+zGmfHVhJzvVya4=;
	b=AhZ+CrIxWXRBXaJKh8gdlzmTm12IgFrIpfzaMnlvrM1KGWivpROE3pVzA1WVCzIE
	CL9HWddUcZaksVt8E2iEnOMLqDZvCbVuUZpG8jobIoa7vTOYYk1iAryleVuSCUHvqGm
	We43p3FL+gDZomzFkubQkDJG1UyI7cAPuCQFafUg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644966985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4kWubirOEmRq95y9tJW/YGP07hPL+zGmfHVhJzvVya4=;
	b=L9IdszGjJG7wiZ3V20V4To9dposCM4fydZk7NiAdjR+0OkAtcTg0J8mm9TfqVyK4
	F8tpi2tw2Yf7Q6w3yC3nEy8XVrzWx72AQxhum8V9Pztn9kGvUOt4T4sB+PuS0K6uXKg
	n05wIppxqmfOjsRofuFRBwt5rjiIO6Ol8EuBzAj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017effac3c46-2d465389-a340-4fb2-bd8d-b06f7f7e4de4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 085ddf20dc695f90c26120a854e4fe1bb27311dba30a25b9c71db28a9c4b50ee
Date: Tue, 15 Feb 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644966984
