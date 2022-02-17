Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717233B33
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645074084;
	h=To:Subject:From:Message-Id:Date;
	bh=+uB/EvhHMSYlPeCbJSuUkdqWqX5hOWTFPBPiiI3xQmc=;
	b=UY0jz4K4JeL7WwFYGlk/aZwmSuUd5hmHJjsXkOdYq7EAb9bcfbSByCQ+wIUyxIL3
	Y3d4JR9m9T6HsWLEIlK/zPLcEX3byTDIHZ3KK5ESmrSw0pTfiuEX+dzu/tAegsJTTT0
	b2pZIfK3ne8ibkvWrm2eyMlSOLve7YvcLvPGGTLA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645074084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+uB/EvhHMSYlPeCbJSuUkdqWqX5hOWTFPBPiiI3xQmc=;
	b=PqxtJXbZHMmfnixlCa23YJNdNxOAOCPYACC1tY1Ob/l36PK3pBVp5hLGa6t95sov
	cZAKqtUl+Gj+fzNXqsYKbE23826MicZCYIqNTkFUDE+9SrPKwqjQEEfOMZTntrIm6hq
	xI7O7PvaS05CtfPOoybgsWJ9aKuqOuRa3CEyHYdg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f060e73bf-9fb03b9b-1214-4a7f-bf22-5e12a000d967-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 174ca1aae32d12af878d6bb5be9c8d0fd193b1a1b205e29c4c71c12cd3a5bc19
Date: Thu, 17 Feb 2022 05:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645074084
