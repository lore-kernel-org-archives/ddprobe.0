Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91ED87B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645831884;
	h=To:Subject:From:Message-Id:Date;
	bh=BfNeRj+NVXGDzpaNyd6G1RLSBUCQQTcva0+vQDnc+as=;
	b=LqdUZbQ3RbiBN+za9MBY/y1/lbCYAat62BJWC0qo3vK/K8zaILgcmpyzVIcvrdzI
	35rVi8gMm91vkYbbmz/i0C14w8tO9qBBvkwGp/5JyXWaKwM+G9LQVUCRv8xsn1F1Gx1
	TWNgrSh3h8UHEkT+XLxgyBmnqdxWmZWvcMW+dEIw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645831884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BfNeRj+NVXGDzpaNyd6G1RLSBUCQQTcva0+vQDnc+as=;
	b=ZNR7whGkXvinaDCBWbfJzasPLIZwvG4HllWjkV4ZNIoV6v4T1UHVTlfxPwPIcctF
	xlLUyNguggXjFQFtE9bE58YpuBFbQIx9V8/Sd7gLXiKxBTXuDcqbYLrgKX9zYQ+TUwx
	VMk7rl8O9Um7lKe58BF99SIej4pkw4eCFeUoJxOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33398fe1-e1bb2a96-09f3-49e8-bf17-8eda31eddd9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ddac61d174e08c7a8a6629085a86122a5915a434f119731f163cc7fd04d9d11
Date: Fri, 25 Feb 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645831884
