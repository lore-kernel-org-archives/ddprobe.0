Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE6F7E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646360785;
	h=To:Subject:From:Message-Id:Date;
	bh=QORyh4LrqRhlWvOrF1tGFrq3LC+SixjN1MsITyNPvYM=;
	b=KURlajatPF8/E8XBG0PqrianlU0KNfqhVn2S7JWpMVFJpOMK0sV/6srChGGg5S0K
	A+ULdmdmM/xqkIs150T+wXBYyo/C0oqcjzUOSJ+aooSm93lW+66AJfWRszurUSvHwVt
	RhORHU6LyU+qLUYw9ResmHzARp8RzcP6smkKYCtM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646360785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QORyh4LrqRhlWvOrF1tGFrq3LC+SixjN1MsITyNPvYM=;
	b=JwJYj3Zi1ifM6wOyZwU4AHtaSFd4V015eUTart2kPqjgK3BJYT7m5mExL3WLh8Fh
	fQDKqbE2ZFE0xv7m7O+44DHS9fie6P5QFsvuJ0UkIRxcOHc0lLFL2hbL8FQ8u85xt5Z
	Dfskj6vTcmbOUXHmtPl7aMOZ17rml38+B8TAXb2k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52bfef70-bf50158d-026f-4d5b-ada1-1a1885445de6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46c1ae55a378104b39ac65a9838bcc00bbcd67a89a2ecd67c47cf042de60a3f6
Date: Fri, 4 Mar 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646360784
