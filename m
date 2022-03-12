Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E28A620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 04:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647060084;
	h=To:Subject:From:Message-Id:Date;
	bh=Vh9TzeHc2gb86m+hKhowp+Uu2nIk1UEadvRmlLDYWAg=;
	b=m1VOe3PwZFKOJmiIW8LkA9xNl9N7c1YzAHf/xKTyglA9OeObm5tgw3tYn2ONetse
	N7J2uMotMSFkUU5G9lsOb1/cIkbfLJMdSkDH5kE+NCdRU+gBrROvvGWVjMC+/+Scyrx
	AxnHX2C0jr3rxddFnpp8nGaaL8b2a/ltY6vU/cn0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647060084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vh9TzeHc2gb86m+hKhowp+Uu2nIk1UEadvRmlLDYWAg=;
	b=BmefHSyRhqPbQ2yI29BYrDt2HDSKg0tymTF3OBKhnBV3xfuspKgAF/g9xA7bDSxF
	YvxnuN9Ruey9kONupNiLDJ1M8qomxUbbWmBC5EgjQX0hsRJfulkf8p/yvtgjcHMpHRK
	3q3UWrQgqcUNWHSUQWa30kNrgouh0Ibuvq2Cnbto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c6e67ff-5326a718-4962-4055-a888-9a2267e942b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e02076b641252024167938c03174bb042e0d55acfeb36de6f745b6a976342ffb
Date: Sat, 12 Mar 2022 04:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647060084
