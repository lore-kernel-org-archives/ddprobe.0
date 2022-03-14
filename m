Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8082D1366
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647238884;
	h=To:Subject:From:Message-Id:Date;
	bh=Fq6/tt7LUKDvIBAr4odTakQa66Q5C5cJSq+sp5K+CY8=;
	b=Zqt21Z9KeRFRUs/AhV7JU1RU3JO5Os0Ag5RqCRiFBapZ6OuTH36vIcqahtjDSHHs
	+pXIAjqXn6fbiQwSgZpKV1of89VBvQJUzIscFbhjN2LLo81ZnrVHgndZzbT+bWoqWLy
	pL0eA5prVDUyK1n8nXq/ejUWroZjOlz8aVWvgIvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647238884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fq6/tt7LUKDvIBAr4odTakQa66Q5C5cJSq+sp5K+CY8=;
	b=DULi441tPSY6gLoPDo9oXhap+RPh4Y/B2MeSyM2QN5YqAH1Dle22vtxl+1xgNvvH
	Bvc0lKKNGtDSbyE/LXN7uF4GZrORT0Se9Xjaiob82ZaBKhHXeDYdTBTtJ0JN9CMbAv4
	eWivQ57KSeV9emHtWTNZQ3z+4zaXxyxl0L7N03qw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8716ad65-563d154a-8ff1-4f71-87af-ff20ef486eba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cec57eb00ae61ea78ed0e61818b75de92a1e32e4202a06298d756e18985e2259
Date: Mon, 14 Mar 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647238884
