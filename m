Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3CEC7B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645724785;
	h=To:Subject:From:Message-Id:Date;
	bh=9lBsFFX2xdjWyXnzZ3ZjY6R0a2dTcjMG6mSzHXWIhK0=;
	b=Om4qLrUlTcHO/JrwOTeCbBwuP7NO4URB9O3ht35mC4CcPYJFCAHQuhM88wZFgGDn
	hEZRW3F2SZdFdPWY6NyB3Gj5+TAvEbJSfCqE+mEnaHcduXBrMEG26Q2xdqW3ptmzPdW
	s6f7j6cpZN3B0Ik/PysF590JFMD9MVuYDPCyEaKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645724785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9lBsFFX2xdjWyXnzZ3ZjY6R0a2dTcjMG6mSzHXWIhK0=;
	b=j+ZcSCIRuh59Bt5olIcA+EqrdUxiOMBfaft9OxszhKbybInRMqS7WM2SL8JspoND
	NSVlwaOLw4m/RXKpoQ44GIQroYHAE8wsj1lN3XtWvI9y4kEdByI0zs2ex48c/pKuXKp
	IrpZKC/O0GFN/HCjHdRjVdJOxIZ/xLQFxUS7Qqc0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2cd758c4-0c90ca03-a195-47a9-95b2-7a4b2d239a39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d2a7f45a6f6e8e8d2a5b3a46ea1136038465a9ae8af0842069f477d67bea9bc
Date: Thu, 24 Feb 2022 17:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645724784
