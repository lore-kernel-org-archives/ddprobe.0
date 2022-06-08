Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC936320A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 16:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654707119;
	h=To:Subject:From:Message-Id:Date;
	bh=HIfsqu4cvBSeSmlX7FpZZBo8V/W41tJWxw7n/R7gh48=;
	b=EDQBDeCF6SVk0oEXpXAEI25Qjy6nb6j7KONeb5TqSi22yTDWm9F/AC/cJHYKdi80
	zJ7pMVyhbAGj003xCfw2T2AL3DgbV4TvcwDz9L0h+BZlRt6ekbbaEKYNWHotXl1xvIW
	vTO7etCPbpnkWfjQQMOlpjl8bOexuDuNnj+mEM7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654707119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HIfsqu4cvBSeSmlX7FpZZBo8V/W41tJWxw7n/R7gh48=;
	b=Ne7ExDLJyN3MzP3jT1blpOkeX66pPjNJv0z5uanAzTQ91x71C9AKZBk5GcXMR/Bn
	RWX2mhsZNUZq0sptpEnUL47nGiLHs5TqJGj0lY19qiByeOX+pHfPYivnhYFQK0tdMRm
	9D19y4NEAu2W6ZAQf0XPiuA1yukn9xGFMtKHN7Qo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181443ae462-25ec15ee-a263-432d-9d84-a09f01a2fe33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10b777b69aa45aef146b0a999ad0fd376ee6fe1bbbaf12af79304907df7704c5
Date: Wed, 8 Jun 2022 16:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654707119
