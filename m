Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4A17A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 10:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657274812;
	h=To:Subject:From:Message-Id:Date;
	bh=6kqaz1NHITW4XnLICruXURaqa+moxYW4m5fo/jyMK7s=;
	b=hSwU4+2QKJYrRo+XuHRPu4eB2QGL3KWdUpn3IlYe80ljz9XuH+ee9tg+aocRctsc
	21Y+07tYY4fhX6krnEG6t3X/c+/EYLmMkZU17NQRNLeMzpf79LXNPwBcGM2Q0OR2+rY
	RYBKac0xcUOjGsslP0chdOiDC099eq9t7M1ubkSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657274812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6kqaz1NHITW4XnLICruXURaqa+moxYW4m5fo/jyMK7s=;
	b=OiEIgaAAMeLFvmROvRWDpx3xylHdff+cDDWLS8qEhXYOGkl0ESeYQ7PjDJdK//Wq
	/H3U4YeLmbLI6lPSbGnuNIwPupohAt8e3FqfNQ5c9XdfX20CHBiU9OcW/iJYHoGnabh
	q2TEXxB26dL2XKFEx28UWPMpF/P7PSf6dM4/K8pc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd46c76d-ae52a347-db02-4821-9c81-d1f41fff2b87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 765ac132f4d14052c8d0f2c9d404b50ba8d86b1b6303b5f53420b9853e87f023
Date: Fri, 8 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657274812
