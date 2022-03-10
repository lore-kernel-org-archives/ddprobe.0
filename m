Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899097A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646875284;
	h=To:Subject:From:Message-Id:Date;
	bh=o61I9MQVGTu7ixvJAUsMc/a35VKHLWxy0lBvZo2JHGg=;
	b=XZ6auWNOuFXRZxf9EfEHlnRjVuPxLnh5d3HDd8/RfkanCWqICTEz15e8GU5jaXia
	qmXkP21eknmci4T0iGbj7sI7m/0lmxQCFFUv2iEVAQn6dn0qdez+wkmNbXaSeY2dvku
	HJvR4ElezayRoypnWASNHQkaMmiLSb3EJzaIkBrk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646875284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o61I9MQVGTu7ixvJAUsMc/a35VKHLWxy0lBvZo2JHGg=;
	b=DnbdK+c7vAlBJW0lwd+M7HtSy2ZbUhfg4FH4kaQy4qgVpcTiR878Px5L6nG9lbK7
	XXwHKbS5ljyniExCfDCGFljM2MsJh14XuDBt235LGwQpGsx3wxJAg3/wm5KKwoZ9RJ/
	zGfza5KSiTH+V4emRFrtj+GojNQbUvHVxEZJRRjo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f716a94fc-96d6b65b-e1c9-4ca8-bb77-785ef958b466-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9df9e44ec67b2c711f296f74dcd936ccc1396d7b9c92ea7339a78f5b3c998c91
Date: Thu, 10 Mar 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646875284
