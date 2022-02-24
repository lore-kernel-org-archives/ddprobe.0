Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB291386
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645690285;
	h=To:Subject:From:Message-Id:Date;
	bh=AgnFWR2st6naMXja+khXw5k3MCPvuskgVVVcC12rQ5I=;
	b=dmTWjQQgK70joVwvwERt2XzTAfMuUZCeH/otaHh2hLhUz2kJNY43zsAL/4tIv2wW
	tSEcp3LgBdNiZUI9yg2D8JmXf3CXgSBGoRYFGb7p6d0xYU2eNsmeaASDTJzeIpG1xag
	JO+FAix99NwY0bQdVXDtOX88v8z0SfFmPkWGynMQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645690285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AgnFWR2st6naMXja+khXw5k3MCPvuskgVVVcC12rQ5I=;
	b=HvfbrFB5uLR+pzPbwyEbQ+7zpEk6gwW/0NYe5n5RIpZ0O7ByVdoUFHHN6CE692bX
	7c3AbTT8eYp29Pu6I8vZi3fihpKUo12YGD+kUvkYLT7WjhZdOMmqRnOA8aPn7MmN8rj
	aOG3ntOWQ4fqdZbbI5td09BPz20ESnfqfIVTUoyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ac8ec7c-fe34d371-51ae-4750-922e-a80dc03ac99a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddf0f9cc71136c6eb1225e192ff80895fb660c99552aca76330c1a2bc19d1a17
Date: Thu, 24 Feb 2022 08:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645690284
