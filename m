Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDDA15A7
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 19:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649963458;
	h=To:Subject:From:Message-Id:Date;
	bh=J1EwL6FJP+Eweh7HoxgMTDTTID89CxhML1cWvRPgw9A=;
	b=SQPk44nH+KeYs0gUFRMHynDg6H8tm1c/Kqa4jK3uWOV+jCfUsG6EYRME1sn/Hol+
	8BmGvHdqajzPPScww2RId1ccLVB/TS/4Q9vAxbAHwkHu07lPIExtlHuKg4Mtxh2BVRH
	s+72gI27E/73kyImdKv5G7d2KXDFULMUYBxWc52Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649963458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J1EwL6FJP+Eweh7HoxgMTDTTID89CxhML1cWvRPgw9A=;
	b=aMQ+mK+bWvtlz7ykIWdrKQC+YbEStHktht1WOdzqiF3L/k9sIZSoth7Yvlp1ZRvY
	C6RZNaknx9iuuizd5lrL9PML7Lok+tsDrnvTtSw6FNhxZueDIeUlvKO55oh9q0K4TkX
	uz9KyGOQr0a4uEcnrLPlYJTTT5LbAbZ7vUwr+U0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180297c5f17-3f2d5f06-3467-4277-b85c-fc8ad4a1b4e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa8d2936ee3c7b4de2b04a76be3d7c5b1e70cac72fde17bbe79c1fd2420b2901
Date: Thu, 14 Apr 2022 19:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649963458
