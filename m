Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD2B1561
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644932185;
	h=To:Subject:From:Message-Id:Date;
	bh=LMk4SjVc4oGE5GTxsvMuD6tMV0ku8gt+QQsf80JDYDI=;
	b=WijfTH3P/kXUNFgHv4J78EegCWKkIcS58nI1bb8zG1BpGO9Tr78I4TEFw3eN+/gu
	KxClLCX1YbQxMGCDQ/85bYhvpxHDnRma6HNFMJdVEBk+D6qQGgIQW3qqZXoEV9eqM8z
	gbovKDjWJ/94/b7ai38Sq5I4F10/aT7uHIHuzQ00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644932185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LMk4SjVc4oGE5GTxsvMuD6tMV0ku8gt+QQsf80JDYDI=;
	b=JVCUuqdZS9OKJSbSRqrWB0ri0mYDBpp2rdYNXemWByxFHnvR4+CTZkIl6o2S7LJU
	sed6u5CZLEEurEIbCDn1AM/oOvlJsXv3YJl5ZVU9IyozuptwTT6VjZrwpEnu7ES10ZJ
	6DCLqW6GBS2gliMSy2X93Vcz1p/b7PwJ44LNozGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd993ae9-0e6df4f6-b7c8-42cd-8bf8-208fb745aef6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91aeac1e2362547b22300ddb089ee4103ee7261f3993d4a2e6ae03ccee0e13c8
Date: Tue, 15 Feb 2022 13:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644932184
