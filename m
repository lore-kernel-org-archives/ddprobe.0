Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5CD1578
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644938785;
	h=To:Subject:From:Message-Id:Date;
	bh=nYDRHUs+d1WVFCyIeKuZUDBo+veiT2BD95f8SIpswNw=;
	b=ZZrS7Azzww3ayxWJWGe68nqprHmvyZhRkWMpMcfbSyedV6GZAYcjC8Nnxnixnyc7
	+YhblMEAoFqgeevb9YX9mx3cHJehKSxQndDIrwKLA9wqKVXp4urmb7teC/fdiLHnV8V
	/d7RPjhpDSTXEam/v0pNMKq9LsLwQ4zqK5fqT5TU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644938785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nYDRHUs+d1WVFCyIeKuZUDBo+veiT2BD95f8SIpswNw=;
	b=dILORv7CvwRXZV4MTrUoUPjms/ZmBJdethZb9Su8gI0GADTGY6jYi2+mon1MRN+G
	M04/o+jXymbHvMvvCbM43hqTbS7LvqVviP2amD2Hi1NIrOxieXVGMiRauk1arenTC3x
	zpXWOuHndBKd0x5/EHS+QCQAmGwCg3fGjwt9RySs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efdfdf001-1f026567-f747-4e27-9478-a0bc09e86851-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9da2e04dfbfddd0a1113e87738747a7159530fd8bee708f794766d38e134b583
Date: Tue, 15 Feb 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644938784
