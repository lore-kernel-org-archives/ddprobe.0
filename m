Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4C920F4
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 12:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648558018;
	h=To:Subject:From:Message-Id:Date;
	bh=R0QXgojocfy8UWJXGpu0VDvzThptzCWUps/LxJPqHFY=;
	b=DTCklhOCM7sPH2u2M7NbIg7+DDg3gi31G2LTHSFEfVm2cZIJwaKkNHN7TkEte4Hu
	03msYzIgT6jpiSGOPwbPKfBXdgjd6Vcs+v1wu0JjTmNTK3P2uDnPdQe97/Y9YO6kJrx
	0sZuRtgoL8ikFJ/eRGGKszXr4sIdGCwx8m1nuGhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648558018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R0QXgojocfy8UWJXGpu0VDvzThptzCWUps/LxJPqHFY=;
	b=bBFrB6XoYb0LwKMYalRF3pih2ZF1s3yJUm9KpYbQQHbeCyG5/FYr+n9xbwD68tzW
	OZZebai4rZxjiUqU3GcM95qljXuqIhnRIOHVGL+sZ59G8TmJGHyaS8MhwnPcjWIHqS2
	ZWbj1UHvuqa08yP8LNHvGS9rDWZbD+Ew9lDpr3IA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd5b70ede-af246b77-03c7-47ef-8fb3-0e31a68641c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcbc16815e7da06c560692ff9d3d2e0a8deb55114a735707675aec5fb00a8459
Date: Tue, 29 Mar 2022 12:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648558018
