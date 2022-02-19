Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7330A57C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645308984;
	h=To:Subject:From:Message-Id:Date;
	bh=JgYgfh4BVkn6ttJs+QIHwuDY490gr1uoX0VFL6JHvBY=;
	b=XVd/qrIh5yIw39wg4rx5p2/JrutlAqdDsOIStqa01UCuuB20QRFCpPQLVhNlK4wk
	eFp7vbMnQirFKQgv41v/GL13nsn8XQBE1SHpTxtbFgB36tZ41a2gkcWAIQmjxzlGO6R
	ke9iDFHNO7iEsV3Na2flvrL8/OdzEZ8F1RPuYxwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645308984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JgYgfh4BVkn6ttJs+QIHwuDY490gr1uoX0VFL6JHvBY=;
	b=GQrwz9RGaW2Y+HVUZ46gm4Y3oFyfrx4ueBeduygSKj8AAVooKfmQWfwLJs1E2F16
	llavqcFr0jhMOTtUN+IexhFd9kfk0iqjMAnMUMea+7hWEfBisgRXFF1rCxdnSTNOkmq
	AyXW7BUYtqQBU3oPfhOTD5uJNmGD7Uzha6mBf1eQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f140ebdca-1d1740ec-c101-46c4-b405-870b726c2a6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc0e1638d2b6474534c84f84645bcd6c1ee6d25b630a78db8a9619d89e117f11
Date: Sat, 19 Feb 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645308984
