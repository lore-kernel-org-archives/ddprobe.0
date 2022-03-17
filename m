Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CD14352
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647524485;
	h=To:Subject:From:Message-Id:Date;
	bh=rkBnWbER8lawoW79Mt+hxNXgjdQagJKUxusReDcAG5U=;
	b=bJMWVX0ucDkXrABDRr7IkDEvg8Y8GuSRqh2bas5Z1y+sbEethyipkUZe8YT0SfCR
	2fQSEgTt+tgECghinB+eVQlnDry90uAvJfRfXyV69LPxcKelXDgRl40pRF6senAhXjC
	4pxdJfygK2XOKhoUCj86c0hJ4jcYFA+lummUx7yI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647524485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rkBnWbER8lawoW79Mt+hxNXgjdQagJKUxusReDcAG5U=;
	b=HqLPAvT3Q0lYgQKdjsbVTQm945494OgW/UjI/OJxSCD8JE5WOf68MAqW7Q+rYqNu
	cZq7Mr06qEINllV3Av0brniItPscovS+5t4635gLdSbtutm3Kz/G18qCwPoj/T7lSf+
	DmzSD8aw/GQPxVhTwNz5h3u6Uj8/1e9EYEeUtztM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f981c96b4-8aa6a974-bb2b-4d67-be83-f4c21d753269-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cfb58d761672602b6bb9753ed1c686ebcbc2c90424add32aead608438e56671
Date: Thu, 17 Mar 2022 13:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647524484
