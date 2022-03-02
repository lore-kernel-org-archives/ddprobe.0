Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8A62C9D
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646225484;
	h=To:Subject:From:Message-Id:Date;
	bh=qI2z7Up/ynD7dlBhkNYFN2cE2o8TdSLCc+XRc6ckR64=;
	b=c3XNQxbI1s4ICXQR3Hl/nktme3xRZLG5VP66RSJ6sdyXsiXXZYxx0oW0u39KIjoL
	cp94s1K+B/YlDvHin3l2eWLJcx5jxmGfNWU3kbrKfCBjEVMwLZVJNH0Ky6kMHbpzO0s
	27vR5vSUFK7UHZSuBEYzcAM55G4ULIkqpfMuZ1fY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646225484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qI2z7Up/ynD7dlBhkNYFN2cE2o8TdSLCc+XRc6ckR64=;
	b=L8IVzOUKs3OTWe7ffDv0GORlnliXr14i6kO1UWc1DLAf9p8WRh4efuvOsvqBwHL1
	F20xnYWuZl0KAs23Lo4BBVFwjJGcvcqS9zhKimY3v6/ogafMyAT47LEBgwQEYqaggfX
	euujhOpOYDy62t1FY3vYGcEhhZqZSJ67AqSNBi80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4aaf6bdc-0b9af9f5-0924-4381-831f-ab4ea76025c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60073f29f9d86704e83cb57288a999c3f366159dbc97ba6df4b70b05a7c5d8f6
Date: Wed, 2 Mar 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646225484
