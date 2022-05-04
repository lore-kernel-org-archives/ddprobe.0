Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308FE33E0
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 21:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651701478;
	h=To:Subject:From:Message-Id:Date;
	bh=e0hMbLA7K0VQZjuFIsOF/lIizKnaZHaIichWUtRlxhs=;
	b=Y1CQLLF+XeQY1LtWjigaU9Isi6UyNDgTkrXXM4PYMugRwjPSx0Ct1DoBDjxZlYS7
	ytCM/P6c7mjTA3yAiRPbwS2o2drB2aXHmfQhXOOqhBhD99SDu8jTmngSAnMVZup4oC2
	EUMslNIIWMp9vm6vdR90MjPwOPnZMVNOvhKb6+Ww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651701478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e0hMbLA7K0VQZjuFIsOF/lIizKnaZHaIichWUtRlxhs=;
	b=QUgWPRBvoc0ey6Ashng2bCYJJVRmMqsEAtcQMYztB23vQvZiaeeh5PsZQp0+yhnk
	Zc3hqCCWxWrCOuw2sdRZWrvXhC05gk3WIaak3pH6rBie+6fAznNdOuyoBRHh1j7GLP+
	7RTubmbZrnjP+Gn/7T1zB1ph17K5joCNoluMRx7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180911473dc-a78f6a38-339c-4228-b334-49558c234d2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cc3ed0fc54e74587c6d1d12819e08e73bd04ac548b0179399253a19f2c95eb4
Date: Wed, 4 May 2022 21:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651701478
