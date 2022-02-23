Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688FEC8A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645633585;
	h=To:Subject:From:Message-Id:Date;
	bh=XPDkjWhnt686WPws9eBiXHHSX0aS8Y5t/5utX6GccJE=;
	b=Jq6RsOvutJLKe4i2BhdD21r+hTLnlowSe+Ng8QQUIngbCA9uerEZTVDiFHMVEOGd
	9ffItVKPmByczc7FGnuKtxmGr7wgqA1Zij+BPyjsKgrxUe7WC25UUePlSH13YxHNrBY
	YUux9apFB5bLtBWHV0Oaat06P4I0+UTBB0U+rjC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645633585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XPDkjWhnt686WPws9eBiXHHSX0aS8Y5t/5utX6GccJE=;
	b=jBn+A3cYQPhiAVNA+PlktnXdPsXx0Bh2nnFxWLrx7S17LJZGDMlm0PC3W21jl9ln
	ETU9FiGyxzEvhx6IooCvP0HVGKwFjvlOZfKL0ESy5BPVzAo8mJDQQVtgRsm7BIHOQVX
	S56cM4Vz9VOWTMO7sqMW+WGwAloGqZLf0tYApUAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2767be88-dfe97a22-d354-4951-aab9-72879e6f6b52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a736611b8c2fdb901e7846b5fbd9349d09b8cf97c9c30712f94141bdf6cfc806
Date: Wed, 23 Feb 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645633584
