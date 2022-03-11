Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5BED258E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647038485;
	h=To:Subject:From:Message-Id:Date;
	bh=YBCg2DZVWOSjlJbwNdnSpuPR6j82GgLlCZf7CfxdV4w=;
	b=dhHRaO6xT9eERPjem3syFCIPDZOs/5GCju+i/EZuccD+f5ZFWvN2xhzwUPVPye6U
	acJ+wsVgJk22/aAeYPk4w/CYxddXRnBzUO8lGMLGgZptR5Qz4EZ+pAEnc730vD6HxzO
	H3qEBG6BIgsqHVZoCpNsMZXkfKeb6YI4UROKKGZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647038484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YBCg2DZVWOSjlJbwNdnSpuPR6j82GgLlCZf7CfxdV4w=;
	b=PBFuezENrsHQwxR7JkgJnRN2fc0+BKo8xetkjo1y1AQsFFBL2JXMetvOlM6fs8/W
	wNNHOnSybmnZucNBj7OXq9NUnCF99JrEz2NEmYiLTxaqIimywIUE6h1Jr4Hp2dFrUce
	/1clLeOYA49ouI8f6tTe94tijhxfNr5ucgt464c4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b24d159-28ca498a-5713-469a-bd76-2bd3b798b64b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44984068b8989032f4cd344ce736cd8ba11fd9f56c2abcb9116f0258186326c0
Date: Fri, 11 Mar 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647038484
