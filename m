Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B16A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867679;
	h=To:Subject:From:Message-Id:Date;
	bh=sZneGsw9VqOUKpn/jVd6e0cRi6FjMV0JnK3Z4C9V0Vo=;
	b=CL+CFfjT5TRoQcGCuqQbnsyE0ZLLULXyeEZRb3zDbt5jqQ8cScmY9A0MDst6mNvQ
	qu9oel1AqFxnsZZ+HVlRloPOTzmWvfgUDuZ5NcGRzpScriDL+nJGLg8rL+CqyDwyDRG
	X4hjK+TPIMiQxVnmObakaqCfagBMlgvPoNDTn48E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sZneGsw9VqOUKpn/jVd6e0cRi6FjMV0JnK3Z4C9V0Vo=;
	b=jy+EPpthdqJGPRTpUrTQeOMN3i8K45j+YAyAlYH1vBOOh0x1aF7L8FqLBHwh1wRt
	txyLDVncWS2EF5wm//mIxw1/yOa0E5SLLSw/IR3Yh8Blbp/C864TLLx59R5nfuwJ5sl
	YdaUZ+ysWuvcGZN12DoiBLx0Z62SzNYiBscb4M1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9c0f5e0-e6a33046-b2e7-4b8a-b454-6c4e1bcda4ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fe66dd2a6ab185403ea391b81fe66fbb63f3357011c8037cccccdfa9fd6e4a0
Date: Mon, 14 Feb 2022 19:41:19 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867679
