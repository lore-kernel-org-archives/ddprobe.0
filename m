Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75ED85A22
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645347384;
	h=To:Subject:From:Message-Id:Date;
	bh=taU+zyZVxn91PgS6bp/N1wYs+Q7vMWEuM9U0NAXjrbA=;
	b=cooe1XFZBAsn9uT++7G3hFzTVyuS+JyLsCTyENoZ26ylauYEoNFAs0A86opTQqbT
	q7z8ru8Xl/3rcRIshgvDsFcGu2ql0veWJ2bsrlfXccJqM0/POLe7RvqJzcDqpUkOYCL
	OsYNnAzCxBDDFyTDH7OwVdC9FIcAkXuoVmAfISsM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645347384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=taU+zyZVxn91PgS6bp/N1wYs+Q7vMWEuM9U0NAXjrbA=;
	b=SNk/WEhL/vXkx4YjVXJOMYBlcSw/WbZrhT8LlAGL9PkeWivOISA5iZeKgioOlFQU
	EvKWyndPqB07UBjhUdY3F2UvoDs7nScJw0f5ffTUmp8arndrsi1/MYQm6jd0iBBfddx
	pE185z3janhKQmXSBocRu3VuPOyBLzK+pe5hJ3j4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1658adad-63f908b5-dfbb-4382-baf1-f68bd524a236-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08a25eb11b0cceea88cb5854214778fd946673446fb8449ef99ccab71c6958db
Date: Sun, 20 Feb 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645347384
