Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210F348A3
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 10:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645180885;
	h=To:Subject:From:Message-Id:Date;
	bh=lxD5kHeVnHKg4PPxXcrmzCvzbtgYTWVbCkXsYm2owG0=;
	b=LlfXjowR1Uy2BSaqi7DhWp3WTsc6N6lXCmnb1mV2GRqoxVcn9dWw8B5N3MfzpQAU
	GfbT3APG6OqkP9bI6zKKxiRfafP4J/j+FuW1GoC/zHO7iUTIC1nXNWbZB2o/pgDny7l
	8qhZIeX6qgiD7sweTL9PJNbAONYO1/1DOr+Wyko4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645180885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lxD5kHeVnHKg4PPxXcrmzCvzbtgYTWVbCkXsYm2owG0=;
	b=W6qfKafY9E0fn7bB1wrUdMemZZtGxN/MGmtuB3tRRCILqQW+8dqsi+rCN+8YjWXK
	foLydeckCndD5qrFgxk5aV6dCDtcSkd1v0vId6Ve3znMHb8iregMdQrH36xu+hlJNe1
	uEknWsa9LeW0EAEYhW0RRl25IEAXsK5yvrEBs5Tk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c6c1715-e773f352-ef2e-490d-8ba6-f7a9d6bfcbb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a8de2d682125d0c7acd5ec3bb43302e8937a08be32b86d3adaa36aa4122f761
Date: Fri, 18 Feb 2022 10:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645180884
