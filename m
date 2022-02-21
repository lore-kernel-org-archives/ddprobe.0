Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546AE6149
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645408284;
	h=To:Subject:From:Message-Id:Date;
	bh=lA/3aIQWGWY719Ofehwr/EfNRU/nlFCRolHWXx9amjU=;
	b=VcYGCGSZC6wC+O0KuLorud8a3LLNUIGnSDfOsAIE3HVfdOI/qBcGcFItxnnsjRSS
	e9XSUretnbhNly6Qra3ME/zCmugJiFDKjBvqXMkzh43d2FkXwWugwcQuM2B3fthVKH6
	QXXMZ87g8LvAZopa+0h1tCJh58sA8P1e+nz+x5fI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645408284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lA/3aIQWGWY719Ofehwr/EfNRU/nlFCRolHWXx9amjU=;
	b=P6mPukki/eiBodnsIfvGzDHK02wAGcsWdEczp0TS1N3qAho3LXJ391DRuZUnHp9o
	pwhXErPOf0qQHh4PPWrCQpnd+KQy6qDvWXqzd0ClF5FQZFiqiq2iYC+ws4u7KzT/81Q
	U2jXfqZzo2BuvyWxLj3Da8dpEedpc6D7JIcA6QhU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19f9f05b-ca24270b-433e-40b3-be0a-e4a9fdb72ae2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb342c39d4b4b13896e046700181c8b0f8296e763a138397160bdffc054fd6dd
Date: Mon, 21 Feb 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645408284
