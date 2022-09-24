Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA04529AD
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75514C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664049653;
	bh=berCiouvEpa/WZ/4BExdjX64onXdKw0e9HK1jVrfJOQ=;
	h=To:Subject:From:Date:From;
	b=jw+kqFWAaPqgjQa4nqja4/pkLeCgWmokFvra//0KKYgjny8viLZ/1yrmez7NaDNKI
	 QzI5R3m564fLa24xs57wfcmAO/HtqXvD6g+G9s8QVnc4lrZuqpG7OEor9mWVUTTZdl
	 qB9rr6bGsyKx7wQPxvnQr937NlAMj8n2V2fwqGvtwxkOpHi3/OFpHtRF7N8Ap9GWo7
	 7NtIhTglA45WeCm0yzOyF/99nihyEYcqFeCkn/rCTQnHeNPlYPOxS5Xc6Gcxu0fJ1c
	 +6YL1P7m+tVQqmGXH3Z8+cFms8hqQOsdL8uytxUbEUE5PCwO4J8hq+pkf5T4EhB6/Z
	 rB0ycKRYEdRZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B291C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166404965335.27391.12473124824418899401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b70944e5f494a9ded9debda42d9b06ece82b97a5e7c30f363d3529b9f275ae
Date: Sat, 24 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664049653
