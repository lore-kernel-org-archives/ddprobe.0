Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB4EC7E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645569385;
	h=To:Subject:From:Message-Id:Date;
	bh=sh/5uJtqlyudc6R67RLnOsZ0osp9Ty2WooVf/imdEWE=;
	b=TwzlF0tiVbzIHeLWafJYcHnvxFmUBHcIX2akagM9fLCXwUX9YsXB8fY42Ojt64/T
	J0vC3tbxhS01XcD5XHb12PqnoY5c4Qx+OIflosKXnX+VLTXJPg9CZuurb8DYBTyPCZ9
	ShR6TxZSW/Rwjr7rZNvmLd/C/AgQa8m6iZgAH6cE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645569385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sh/5uJtqlyudc6R67RLnOsZ0osp9Ty2WooVf/imdEWE=;
	b=l0Y3ZQpXiwKZVhvgm/z/gUQyK79K+IBKWhTLMDVKeC6hRz6GBkszCRHxgZNaPgCl
	9JpguSG8J0XPvhPErKJx/ewIk/zCBrYgrk8nyp67SLEQuvkd7Pj78WONlIo8Z1+sMj5
	eT9YWfxCnAH7iCxyC+VRsnJPzeFdTVU+XGq85o1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23942151-8651d29c-3009-439c-87e3-5c592190038a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a49e71a9baaa376dbd39a6805fb1ce494066124bd7f2b1d069467d2b4d852d1
Date: Tue, 22 Feb 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645569384
