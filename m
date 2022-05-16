Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1207D813
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 01:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652664059;
	h=To:Subject:From:Message-Id:Date;
	bh=tl+u4ufEsjiRBlMWbeiYU3dX6Jd/2y6VsuAzgiuS1NA=;
	b=T3vpMD5zdwr6ZqMCZTX4V3mzbywhcto4na2EcojbMKxSI4yKXeZQ8hFt84JRzCk5
	KD6i/rZWspvSuWdtt+Ga5IeqVDiogeU0ApmAhd9RrtOpvXC5LT2pymI0NAgmbKCdRif
	qhzgVL/UWbffpL9kz8X3jqCeswxXzLqjczYDBOAg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652664059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tl+u4ufEsjiRBlMWbeiYU3dX6Jd/2y6VsuAzgiuS1NA=;
	b=WMaRo9o9l0fBYTpREibOI8KED1OGvRe5tQ0hq9gGv5t250qINnM56R/+wYf4/ozC
	onabjIKpfe5KfcqujiJEgGtrRKZgxhg8E4XoZ5APrKdvGXR/ZUm1quf3BuaWBRBB1/M
	uGiNTjrHTJS2jZ8m5ugQ8rSRD5STP6mnzzVDbaNo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ca744583-72184478-06ea-4a26-b98f-980655b717ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b5f8d087aaf364b0841dda4688a5e6d00565aa18386e5dfc00475cfef3cb68b
Date: Mon, 16 May 2022 01:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652664059
