Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C70D3FF5
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646023585;
	h=To:Subject:From:Message-Id:Date;
	bh=/mVBLF0G6xvf3sT106/FXZGGXbs9vfBjE8Ftec7dcrw=;
	b=irkaJqy+BEA7qYaDIjMZRl2nuJ9hsql9GlOxiAzs/QWFgbccQBMtDUcE4If8/wo8
	Ah29441w8OtfB8CmcnsiL2FzLAfeY1gtKkXM5AVlkOjyjlU7+jfyf8Gmk3RaVn8tgJW
	7+/mvQ5iYmeiYTZ0EGJoRtSBZ//RujNMdaAFUgzg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646023585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/mVBLF0G6xvf3sT106/FXZGGXbs9vfBjE8Ftec7dcrw=;
	b=Kh2leM/CqG9UXjlds7iE3VD5DcBaDC5BV8ngmZO8AYNMmLzidyH7YppMofglGj1k
	2zKCW7jJcU2/5QKf3ZFG5JSWc5cI1O0Vnkak5z5HmojQAjwfE99R+MooWqaggZmGVKs
	lMXpKN1SI2FNNQIAMjCfVN8YYXpTSqnPa6+/vNY0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ea6abf2-1f12760d-53bf-4e23-a615-b90ab6cabb00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 549c5fbe9bb573dedf0d3bfef82b456ad57a778794b0314e63cc17a32b85d57a
Date: Mon, 28 Feb 2022 04:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646023584
