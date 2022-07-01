Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BED910F0
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656686812;
	h=To:Subject:From:Message-Id:Date;
	bh=g9wO18VhwO6+8ssgFeUAOHAr+8e9AmI6fIyrQ7ZcgGs=;
	b=bY7I0Zwgd3x4pD0vFrZwOQVl3JHFvcpVIVETMhcDFF/bLwEM2+4IoyTyIl/A4fVN
	yMYSewDAQkcBUTu9o0xWy+NqCg5eQXgLCOXQT3Xl+aARqLXehikpsgcBmT4mklNP6mj
	v/a0Ig62HNK0A9jSMQHyyReR4gobgnLb/ED/m/eU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656686812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g9wO18VhwO6+8ssgFeUAOHAr+8e9AmI6fIyrQ7ZcgGs=;
	b=Ii+bkOfPFHCxsA9mALxfvj+vJtNBnkzxulx2A62G4n+qxolzr5zT4WAkMGsGIUgz
	u0LKOmb8STpP1BjIZ/iwFmtKns2No+9oGZf6VcCEPXbe9mA4uVc77Ge+RsVv78vjYEl
	SA0z46vEtIQPUiUp2dLiH9GOV+U3dsPah+gHz1B0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ba3a9c9f-9101cdaa-410d-486c-b581-469dac9bb863-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfcfb0c1bfa9c76a4d6c341a33a265c3804da35882c4e16b925730e65fb666ef
Date: Fri, 1 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656686812
