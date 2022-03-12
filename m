Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B46F92F50
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647078084;
	h=To:Subject:From:Message-Id:Date;
	bh=fO01i/MUHFFzX/IHuE17Q1kwvAL6u89JuOOrS1XWDqo=;
	b=GcFscXX/goaCviEkSgahTf0kMdefjPDJjruAiUHfUppeKPXrvqZO4q1agvpTqnLm
	Yww9dz7mp3bd3E2nKl5kxfFRACtPMEGSpu7W+x9vOVPKkKYiiU/SsKo8QyTyHyFTjLJ
	o6J9IXMq7bPNscvgbCpIrdL/yeRUK511WPBnpgj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647078084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fO01i/MUHFFzX/IHuE17Q1kwvAL6u89JuOOrS1XWDqo=;
	b=MQlUFiCbHpJ8Vd83cB6whByCyt6gZHtb31YjJp8fDHqWH2IQVeixlYwyg/I2GZE8
	rrvJOUc8v7OQUOjDTEKeLxaypP5JX/BKh02KIFEKA5IdemoeZ5sdouI7CNs4vMNyDqT
	T7cUhrFTed+m0Urbs56imGF4N6w15fGATLELJRvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d8110b4-e66a5b50-b4f9-4d21-967e-2536e49fa840-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 569f647d7ac8eb1783feecd78ea00dd9ebfd0089535a490266aa2b345d08f891
Date: Sat, 12 Mar 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647078084
