Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720C85382
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646084184;
	h=To:Subject:From:Message-Id:Date;
	bh=LkzA+vD2AjcqhPMMHTrZo669YCc/DVU5XEZjI0T2K3s=;
	b=cs7VBggNRkHw7ALEnE3pM9sUXDKjOvK1UMPX4cH85cO+jFxRLqQi+3HpDnDAJ1Fq
	h74PCQHGhFGb4RuajklzsU0aGF8zoif7gvbLVtlstBNwvke1AeJC08125fFH3wu0pi2
	TKtCol9JtpyJ7HJvp5gW3r0+RvGjtZYxcv5LLt8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646084184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LkzA+vD2AjcqhPMMHTrZo669YCc/DVU5XEZjI0T2K3s=;
	b=UfKz4r5y7GVWnlGIbUULD2j1uVqPls8hR9PJ+DsssU3hRTlkrJBquPahqRqNu5Ze
	R9ATaRSsPpx7z8bsGkcwQXN8vMI7GUAMETzu03T+YaMkCbguce14KFunfo7eWA4uf34
	f0QdCUasILPzEQFB4/9O9dLCXWFKL5kI7G4vjjRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f42435a98-33f05d19-2be4-4158-8cb1-1bbe72fd3b3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c9da3adcb90f76b1e561cee09c425d89c7f58735e8f57bf727babf7779c8cdb
Date: Mon, 28 Feb 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646084184
