Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C087E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646959284;
	h=To:Subject:From:Message-Id:Date;
	bh=KHj/Wdm3tH1Dex1SGeaiOa7c7Wu3l6TBatnXuTOC48s=;
	b=Ank5m9Mi8UTI/bw/Ug01gE6UUms/lvhFzyGBW9nqrGSkTvNW4N3gTvMg6qhrc0C2
	NZmWhC6lr4IQM51EcL47zyF9LnaqGftwm+tW7XZzsvAzm6q0qVDkbAMBQU8wv4bWnFu
	EHnh01JCogGz6Id6aUUKJwvd6xlivB+c7SQYEVf4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646959284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KHj/Wdm3tH1Dex1SGeaiOa7c7Wu3l6TBatnXuTOC48s=;
	b=NLCxCQdalYrX5YWcCp9YmnTwKtN62iwebk4jSdLglSY6jURGv7Et37niSTcq/gG8
	dwJfqRMR10aJhSZkBIq/I27BmuaAGfBHs3in8/rjbKHP2lzBQylBxCH6C6/d4/9ErDE
	CczmDyIMW8jVT9M17myVb4d5XS4P3yyCYVJoR6ZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f766c51fc-8bf74b76-c5a2-4294-b2bf-9b7786e9f9a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8527a8a51841debfed9feccadfda977e6dbcef086c72d9973cdad532ab153a3a
Date: Fri, 11 Mar 2022 00:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646959284
