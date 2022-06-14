Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B097C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 03:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655176919;
	h=To:Subject:From:Message-Id:Date;
	bh=dQZTyCev7lCL6NtWTW1HJ7im8xFtOyJCDA3TcTOFi58=;
	b=H+Oto3aKSoz2C+SjqX/dfirrnOo0l0X3ix6KOJn6kGHdoKCrTfwRK2/wxm9Kvpq9
	+GS38Ux+ltKcN6f7JsL6iLDb0QXr6H2EI320Y4xPJ1UwR/GWmZ6Zyk328zKwr755kw4
	yavsceSxH8rEzZA0tn8yYT3tRqvKh4B+wHm58bTE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655176919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dQZTyCev7lCL6NtWTW1HJ7im8xFtOyJCDA3TcTOFi58=;
	b=K+GKVBOYPazFY4mkQj4A/AjZp4aXAXsfeZFhTdNvq8PdFlNV6+AuLP8hxhaZvvx+
	KwliZtNLDemIApBYBs4jN493ZG+Ah5qRc6RswP5GJXObSBBRSgkjfEpBpu2cyEj77Mz
	HGjxDHq1CFWZxVy5dTxvk8cW7AfLYDOtQhJXS9E4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181603b78f9-e078f8f7-cbd3-490f-adf1-5695f460ab89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55772e26f5042dc49f057bb785b308883768281b02c743443f48be463208cc9e
Date: Tue, 14 Jun 2022 03:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655176919
