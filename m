Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4652A1876
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 21:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644960685;
	h=To:Subject:From:Message-Id:Date;
	bh=+jCUhWGsGJ0zuGv+B5Svep8X02/PnJvPNxFy9fEtWB4=;
	b=mXI3IEOZ2RlmrgpTOQcGWzF2p8VYjJ+/B2J28GR+fypN0qyra9CXEIztjovQCLu/
	oGSwZRcoaIMY3YZ6jT2kE1OlYhueEA4ZheDzMGKTBisP+icxgbOJZN6319sHf3nq3WH
	ijTRFjd7Oa897h85Uvjp7NUBK/j9AU2TUCIl7CiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644960685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+jCUhWGsGJ0zuGv+B5Svep8X02/PnJvPNxFy9fEtWB4=;
	b=guYCsWzK9D6ykMZQkJNxJgRQAEs2v4Z/6MDEiNiwqvEKeT5Z7wJGvcutSRnlMC/J
	cXl7VfvxhfFtO2dX6GqaTXOhPjB7TYDBb0n4orJ5hMbX3mih/6A/7BQo3w66BbnfArJ
	wl5uGJPm4CzZP76euBmF6iFDpgr3ancsk9OVcnA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff4c1bab-dac147f0-489d-40ae-ae74-918abf13daad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3adf7e7d306b9886a918397eec5a24220bc5fc2169c29427358a2512c19166b0
Date: Tue, 15 Feb 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644960684
