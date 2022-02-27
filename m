Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747332F2F
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645924285;
	h=To:Subject:From:Message-Id:Date;
	bh=uI+QNlxbwEC00LFMbYXdyg0R2FEdZYq/LIwrF2b0ypw=;
	b=QnxIi2n12fseA7C97aFXSfkkdn2mHj+t3cG8IQXV5Qq6HPrcrwIWehAhRi8fT78h
	Zlvu/S88bKtNCIO6zk5LzYntxkm1L+/VD2f2fAKyJvyvGJWDsh9yLtG65Fqx7dFWkAH
	Cm8wruNBlnsLzft7Q/Zog5VufJQT5p8Uu4N+F1MU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645924285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uI+QNlxbwEC00LFMbYXdyg0R2FEdZYq/LIwrF2b0ypw=;
	b=YcaXDs2OEL6DzEA8FGHmwhoas2mSNOGbvmnhept6zE6nk7q7JSUW6RQtO0cJhHLN
	sfmH+0lx94zJERpvIEa21oaKBepOUGmI+iYiHp2AeR/E5iVv3m7/kngx2DAR06hMW04
	pF9YS2YIKf2Dd1mRjrRGtcEK4RP+3L5JT8BrhOTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38bb796f-9a46bfd7-ce88-4350-86da-c45bab0cc00f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6643bfb33f9ebfc4d6cd2b066afad281788c325cad249ebebe342941247e8d84
Date: Sun, 27 Feb 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645924284
