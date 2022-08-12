Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E55138C
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660316452;
	h=To:Subject:From:Message-Id:Date;
	bh=/UFHWu0h1HO2kcPykk8I2BpJVnis8oMDFZEl9+N5LTY=;
	b=dya00Jn1kPNCXtqeOIz8bek5waDR5Xr9aIX+csZzA+7sn7ed/+Ut7JNrd8QpaLKm
	VyIhTzR/5E8lj4DoNEu49ETbJ9jvtVnGDEplHtECeiE9eeF9z4E4SoMXSorXhMELxVE
	DvXANfUwRv7h1KwQrR1yeTXPHelyVS+vElhGq2x4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660316452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/UFHWu0h1HO2kcPykk8I2BpJVnis8oMDFZEl9+N5LTY=;
	b=LDUzsBDPJUpkOUZUHOzx8VcKpatv0HQaM/92LFtXkbVwXkA6FqjKm70gJTPqtmUz
	Sy1PLSEHeD8lQia5lrFZdXT/9zdS0nATGMscI3/Prm60RWlPrXTyF1M9Hbl7V78TtlQ
	GuE1O5MzgTK8LwFnsqgLfFmoaX9VAJhL7qyCFziQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829292870d-c2f760ed-8c19-4f88-a962-93965a1404e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b4a51f609817a45b46ab186da862988e43b725a5b95e82b2a57e2280e1337dc
Date: Fri, 12 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660316452
