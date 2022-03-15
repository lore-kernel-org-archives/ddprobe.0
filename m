Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E601844
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 04:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647319884;
	h=To:Subject:From:Message-Id:Date;
	bh=jB80ujokrMFNGMMCJfDAGzyQ5naFCtqFq37+F4teorY=;
	b=DHo+PI7mJksmqitkIL/L5iCtg+hjJ5t6JN7DQEkhsJxLE2MKA+1v41f/ynkZQkjo
	fjRq8NMhhPNeDnEWvSxtJBtEXRbdi6AVafAYZ3U+4euUXY+cu7ATBHvg/Zlh3Z9jKRw
	dGURVkI3FHvwS/3xw+K085mr7Yr0Oi/wIlY6XKpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647319884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jB80ujokrMFNGMMCJfDAGzyQ5naFCtqFq37+F4teorY=;
	b=VdMOqwkcaHryZ9g5Qgws7xS+DxRU0/6AVRNkDxzXSs6wZ+dqlaGJXfwqD218j7Ne
	oiN6R6X6ITSEN4hNXnft0LEn6pHf1fnHkpR6bEQ8ZMQyW40l3pkZr18bf0QrGP6ZYIp
	FG7SlZppsG327TjACfIuxxUAy/nEnjy8T0R/Pkg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8beaa3cf-265c1b11-0abf-4646-8fab-1f881c8a0642-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1a168cd8ce98cfc3c99199ff2daba73929f33db781faab87cc78a6d1ab3c5fa
Date: Tue, 15 Mar 2022 04:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647319884
