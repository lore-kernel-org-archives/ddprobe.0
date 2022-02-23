Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5277E4
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645634185;
	h=To:Subject:From:Message-Id:Date;
	bh=y8vxibZP2iKJxQ7yvGnPAL65kqXdjh66qF/VRYWuB34=;
	b=G5J8exkP4rkd+/7a6JEBbWX5YglPST82ox0BFWDRAlHnuR1rK1/33ZTehPVfkfbG
	yqmW1UzUvs0TVGi7gmTsraJY/tZ8K8nDwiDoSzu7MUumYeSx2WD+0wQ1fQNQhxpVrZi
	WEcgoM8CyT5PuMX6kybEfeYY0bL3Mn/XSVnGaE30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645634185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y8vxibZP2iKJxQ7yvGnPAL65kqXdjh66qF/VRYWuB34=;
	b=RVFBtvAj9BCiAH80piY8AbkpoakPyCuJl0jfEZYbW8FppLWERyLwzspD9uHk5yCj
	FXdZgNz3Ur2y50nrm+D39dSOlzXn4/AA8QA7YlRmRtvW9tNXT6pmSkPvVlb7kt3zBxz
	gK9g63nKmTh3xKlAES4MDaIlpMLgbfS5mPHk/Nao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2770e6b2-496dc679-c840-4790-bc3e-698c6a4a613e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d09da6286a028d28b1716a29386b67d713a934199098c8da30f043e5a1a302e2
Date: Wed, 23 Feb 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645634184
