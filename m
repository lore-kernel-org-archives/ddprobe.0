Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412CE33EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 18:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654801139;
	h=To:Subject:From:Message-Id:Date;
	bh=23ouUUS5D8ucePfbKkmIl3nTcsV1uLJDy442vWA9flE=;
	b=M4KThOWYi8ZdfOrSCQpJ1xhc7eKJDSc7S9nYl+0H/dK0E4dOq9YOJ21610VL8eFP
	oltY7qchojNJO2dRfbrNN0iJpAYzvGv1bWax3HrLoERMMldEqOYzqQLzgdk9KzzePiB
	4CsQnhMTMpakTRVSJZs4hAHmcgFM04S5gNRLwoJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654801139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=23ouUUS5D8ucePfbKkmIl3nTcsV1uLJDy442vWA9flE=;
	b=H8JKW6d+xkWMJvIWMLmlIDF0C5nsPj59pE8gycM2saVRyTQbQGkXSCyz94ouoci4
	xlPUWGFjWM7ACap/EZRlQBqOvxSYQvt5RGX3cqZAVJJR2cUiHtKpEG87lxA8H8wiOCk
	/huo8sHNqQCUb7SP6fWQwC5kinoqGco9D/owYH7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018149d58644-013562a3-e689-46e8-b03b-153293bfe5a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96f6c18d3574085fb0fb92279c626dd7f3cf551cf909491c6ebec453255ae72c
Date: Thu, 9 Jun 2022 18:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654801139
