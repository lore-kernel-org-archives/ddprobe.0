Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD6436A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647075684;
	h=To:Subject:From:Message-Id:Date;
	bh=g8aZAY2byHOz+tAFwwgbntbJJ/IQwuvo9wdqcRnDe9w=;
	b=mFLc+gJPV8nCHJc6RY68vOQ2RfUk5IAPI0v6KfaSfs75/BpPYjcJrfMFX3RmVGbx
	g5FzcVfep+vkarIksEslgfKl0AfWE17o7xDORw3fNlUZlQ+SacB0+GvrN9nJVRFaPza
	fWbWITYo9sOVrwUag5NI6GwWZpJ1Z+HVN4lfJ6l4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647075684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g8aZAY2byHOz+tAFwwgbntbJJ/IQwuvo9wdqcRnDe9w=;
	b=H/JugJqsQ/uyRwkfwguTPXIPA6KalYBsKwyVVjhXly11q1HkQk3qmidPUOydfK9X
	3R3JxruOm0jg2p3kKxOonulWFSya859E/U93ZH+O+WCYXiQx6nRkZ2VH3rCQVMJSWi1
	/mKVbX3K2q/roy/byTyyjnSSF0AgVkzZPgLUKSEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d5c719b-e56d34a7-64d6-44e6-ac96-d5231a7e937e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dff8cdd56262bec379ea17d4037a6f4bc4d0d5a6a99ed696fc0e25ed8ffd5b47
Date: Sat, 12 Mar 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647075684
