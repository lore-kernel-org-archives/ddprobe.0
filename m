Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BED82103
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 08:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653207479;
	h=To:Subject:From:Message-Id:Date;
	bh=9nrRB/HwqGFQpi7vxMIdTLHd1k+C6PZ3hlyCYMsgGkw=;
	b=icnsEk5DIY6dfgZ4Qb2WqkMUXJA6xA9JMeK/XwimPKV84CnIJeqDhXISeffCw1oN
	XvCMycrLprJDBzHo/DROiIp+HCqTDCtdurVJq30fPNxBdMJ1d7zat+74tTxVbRaT3+l
	HCAhVLHXfuXrLdH8D3Gg52Z3chT9t81jz/5YZICM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653207479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9nrRB/HwqGFQpi7vxMIdTLHd1k+C6PZ3hlyCYMsgGkw=;
	b=eKnhFesD/Oh83zx7KnRFENFtk+1H42imf47pCreys9oVj5MYTQLUDF6zvNb1cbQ2
	FZT4eKjzIh3/c0nvtYXEVP2kJhUCP8HufUZ8iAUux5EuJz30jc0l3ie6NFy1dhckIAg
	UKE+WP76/l1qn4gaIyLwPMUcRgvmHbhZSpL+ZNIw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ead833eb-d438f0ef-8e82-47b0-8516-27ca473c6605-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbc80ef899d920aab6fcb2dcbc4c694f4bd0ae5a61e56a966c255968dbe69e7e
Date: Sun, 22 May 2022 08:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653207479
