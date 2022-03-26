Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2591E2915
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 14:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648305238;
	h=To:Subject:From:Message-Id:Date;
	bh=kofR+xQfz7q11rzQa2jC+GJdVZOeCHpzC4AiuCfvAcw=;
	b=Ehu0+WhDNAyL8AcHH8Qm50/pZeYCFhvsECzeExUSpssYJKzXSnsArjwQ1983wSQ6
	TbAnrdv4b/1a86q/wIGU8ZFYs7p6MHI3N35/huf8W7n2vl4Qu/oRaaE+HjdJpM8Xgd9
	JjrPbhzSd8zfZKe3No12O7fvmDWNmKzPd568Y7Xg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648305238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kofR+xQfz7q11rzQa2jC+GJdVZOeCHpzC4AiuCfvAcw=;
	b=BGkg1ELJtF8kFP8aOHu1l4+BS4FUIYJcQQsnsHkmtJtZU6aFsJHSZ0fQWIpcLqLq
	YL4R3isbUjDSprWCWPzPSJw0y9+yrk+SQ2vSYheN5/zzwEEd2yQe4XCiicQtC82LJni
	RE7qYYZOBCfoJvtN1D6VKeiFy0AzdhB9m3eqjt24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc6a5f107-95330ff4-56dc-4e16-9e17-e73009a7b3f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f015f3ae00b675541f89cf783d6adb16f28278430e54bb47c25452ce7130f6a
Date: Sat, 26 Mar 2022 14:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648305238
