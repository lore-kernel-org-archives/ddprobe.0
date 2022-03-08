Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A80082F2F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646769984;
	h=To:Subject:From:Message-Id:Date;
	bh=Di+z5AOcPNob7W8frlC13L+NSMm+s9tIX650AMflB1A=;
	b=BETKzVu8pqMTZ7EJWpHJO0OE4QOkC6U9M566mHyRuvuX6t7UZc1TnrpQaLpNfsuq
	ePPSWR1lHnLgYEzV/pJNuxS9M3lDptWRkuJKIglfJHA8Orr+by+gnWdwq7tYDS+09px
	cqb5ytKh/2R4sGi5qUYu/n1jkVUdBnnQd1ctrPGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646769984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Di+z5AOcPNob7W8frlC13L+NSMm+s9tIX650AMflB1A=;
	b=fJvkDaRq1NGxJO+mFK/7zz15jehatpkVz1sY/+mrGj3mFhx8Brhu1SCFlArU9PsW
	+yHUUPyNAW4YcsjWbEtrl0lE6xWjZcJsrPwa95mUC3ZDGzSkrpwh7uhAi+uD80VXehn
	09K+wuValL8NmNEoizfIfF+gs0y8+DbSmL8d8KDA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b23d504-02bcb8e4-5419-4979-97d1-7e4999d73ccb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77ab576bb3e731fb35a421219ea9b6d23b6fe07167c5a8e46dd69ac04091efb4
Date: Tue, 8 Mar 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646769984
