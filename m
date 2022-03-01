Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916825CA0
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646148685;
	h=To:Subject:From:Message-Id:Date;
	bh=0dX6aibSJrQTxjGdneRMSaA0DqYLLrexQT2MVB78hdc=;
	b=GSfjZK5VTikSeqK3Nl5emNCgyvTqhgN9RKtjMm4etAvILZQOgmDCXtVcyEU/zThf
	HuXnuCR4QU0C+CncBwG7+fW4RyTySAC7RxOFuQGZt/k2VLKo5MQpb50rls8twM6rLFf
	sOyifCtJWz5evOBe/dU4tID4ppzb0Lui+ywDezFo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646148685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0dX6aibSJrQTxjGdneRMSaA0DqYLLrexQT2MVB78hdc=;
	b=OAcmGQlHtfGAe763kBTmR5vkiHqMOyFHmPooxDBTfW35UsxLny4lwW2bfmmTbXvI
	RrQiOBdngzu7k2GOqbImETsG+rKY5uzoxxWbk5SEwOXJAsiE5ZP5pYDpTEAXLtFy/3E
	UxJchfYOHlxucgOn+GadtOELAZLQzdtSDcC7nvhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f461b8bcb-e6c19bf8-8e7b-4104-b703-7f3a4e78ab3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2908a8f8412e28f6f1a29f3a5c20528e460be8362fc82ce87d4d2c525d20dcb6
Date: Tue, 1 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646148684
