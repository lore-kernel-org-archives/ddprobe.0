Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A4B018D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646926284;
	h=To:Subject:From:Message-Id:Date;
	bh=2+5yNvMZ6m/6e8w+neKleeLOk8LMPFvkdwk+NJZIOZY=;
	b=C93KxlS1REZ3ba24IJWudyi6onLs06MdYu8b3W1P8k5b2HtKz68qC24Bwdc+qtbq
	OhYcImCpKAkCES0pWtp1jzANzjKtFXNNiwTUpIweCO4lyjdVcj85y+SWpp+Ca43a4He
	fgywpLEpgOcy5uVqYSOWxQxYWC9+hsxSqERD8Ld0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646926284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2+5yNvMZ6m/6e8w+neKleeLOk8LMPFvkdwk+NJZIOZY=;
	b=Hx0RLg3TVRVX4H+oNElhiB9Roh/dYKMJshhMWR/3wmuPncBcw4TmgXS90nQ377hx
	1tn1H6xCVW7akUh2y1k2Bw8bSJWfH6qWjzEUtFyutZ70ANdywi4uAPQvL1iomnyDyqA
	BXNu2MQezkNbkevM33y5m2yzDTQlvKUD/tYA7TGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7474c817-b2eb1287-d6de-4a6a-8f40-ddb1f226ec68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 732b930a0371aca4b14f374cc595ce5752b3136db612641338d263df9d0ff582
Date: Thu, 10 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646926284
