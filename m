Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D5636A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647074784;
	h=To:Subject:From:Message-Id:Date;
	bh=VtTYsyvPajbNHV5MBZ9tH1l5TV8/ejGCaTxlm7yTihI=;
	b=V5ujngQb9d7lyxPRunV0RkRDtvIl34xPcSV+4OiI8ryhV3AQ3Ggcno65uQDI8Xko
	Kz5yZMwAbU/SAezd/2iJNP+dOkImAGxRJ9k+TlFTHQk2TwvY/2fdeNalBVK2TAcaFr4
	KmwtfJAGnzeZwqgV0w1oVOn/D1uxz7Ta8/SVi76U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647074784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VtTYsyvPajbNHV5MBZ9tH1l5TV8/ejGCaTxlm7yTihI=;
	b=THF4yZCx5tcyMT+fOIqPFHKBvuaBP/YsWd9bMMA1HWoX/S+GJMBBFFug73UrLsRQ
	ET+KRydkRM+1OcZ1lRgzF0KPBYgy5Ipb7qMBXbYH7fdFDwhFRXKhO6mD/2N8Q7MFjRW
	wmJ5MgFmZpIyvbb4D3PHibzoC7k3XBAcEpWc6gVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d4eb5f8-74ff72ba-b322-4411-90f5-6e45f60d0002-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e5f53ca7c598d4f89b213d0cab3c14d92ebe46cd203a8859763ebc167904fca
Date: Sat, 12 Mar 2022 08:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647074784
