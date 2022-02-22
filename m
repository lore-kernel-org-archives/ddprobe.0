Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE73D634
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645541185;
	h=To:Subject:From:Message-Id:Date;
	bh=0cbzq2MGY5GH7GW1JNtckjnsXwrGnr7cy8g0zlrbOLc=;
	b=TedVx/PUTAwDQl0VIHZPMiBAlpRzB98A2Mm8TI0rViQXe+L2ru1yN4ELM8TiqgIx
	UmTNnfgSlPvTWZsa9W92EpliRoysnGFFTOH6e5LSG9bZ+mcmOAi07ieRcRgVR8+6t/6
	/UpEuI1oCCnUUhX952PS/AYHQjcf3t5PqoQNiC0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645541185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0cbzq2MGY5GH7GW1JNtckjnsXwrGnr7cy8g0zlrbOLc=;
	b=hUX0ssdW4brdPYtlxZ84S649/SJCsNi4AEIjw76ynnu2IhiHMeUU6SQdwevDQKYO
	01Nyb54ggfbfU35lS1y6mwARYqjB2V3ebhTmJlfuFDyu+g1U2TZ8RvFcAz/1hjwzNgr
	LrbBILxqdVJ++JSzag0gQHDtp4MhrG4nUN3PzMRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21e5d4f5-2d1137fb-173d-4a4c-bbe0-d221b31c08c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ed776bec1a399805635f13eee8577898240ae7ce9d55946542e0e3c23be84f2
Date: Tue, 22 Feb 2022 14:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645541184
