Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750493FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647797184;
	h=To:Subject:From:Message-Id:Date;
	bh=zcfAVz2Fx9yld4Xg0Gh5xP6CsRUlIBVFfO9nOh860kU=;
	b=fV4u3wS1BGrT5+yXK54y4YtKpv7h4wukBmg9LqnNKWEvTj4IXU0wOHzKlcM5hs7o
	ILnojZbuyT2oWE8C9GDfAuOMKuNSoUBGi+pKJ3Rp+GArh2UPtKLYwUebKepy8J3uEHD
	ppBmYg5RGiEkWHWK2b5IES3YOJYNef8wSYjAp8AA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647797184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zcfAVz2Fx9yld4Xg0Gh5xP6CsRUlIBVFfO9nOh860kU=;
	b=cK54WN4/cA5KK0Hq6KG8BDpzkIrXwyxx8HSNjHmHxYUKNRHBCrkxRoXv84Xnh0U1
	ZYjkk/9ZZS6RBNjd0WjvvxVZOtfy0Wa7w8IOL1anL8j/OnG4XNMt2NyU1pY3WYaHlW5
	1JdbLWliAGabUbHhQm1eoKvK+OaqtIrNAokqk8dI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa85da902-a733b598-124a-439d-b905-ae629af9f6c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 552327e4ff8ac441654fe5aa5ff91d578a0e2e47b3af247618f8411767c2a5bb
Date: Sun, 20 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647797184
