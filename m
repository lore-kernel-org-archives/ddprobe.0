Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4B610EB
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 05:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653543959;
	h=To:Subject:From:Message-Id:Date;
	bh=gYL1dvWFs3MTuVmx86cu/01BT6rIJ960Oi16HcjqVRE=;
	b=k2hkMouNNMo+vUOiT7yenTfraW3+BLCPe91H02qwvwY+NEn80zchJ+rCWNTW2H4H
	/vDeSR8pkC7UbFEwxVVJ0fBHJb9OIMBb54LNRcuXV96qa4lArt4VoKjnlxebiYqWfgP
	lwSh2HSEpQSusgM5BBD5dFucBuQ4u8pD5G4O7Cx4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653543959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gYL1dvWFs3MTuVmx86cu/01BT6rIJ960Oi16HcjqVRE=;
	b=CPivK0un8BQr0VHjlYd4Iw/PoSsKXO0UVuO0Goo18dAQbsmtmGb1/5mCu1pHp72u
	MOhqzf3st6fWEPA3D+jWqjCz5xAEjtKUNUPEz5aoer8nNg5utM2pCQhWhIWW9DON/S1
	0ZZRIxk009781I77F4rXAdcIFZeBY9IkSJh9ztDY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fee67af1-e60dec10-3509-4761-8d2a-6445c75282f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fad789f58a31d268357c4dd7463b95c431b99d10d540283c8cfc9f37ae64490c
Date: Thu, 26 May 2022 05:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653543959
