Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D729E7A
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646802685;
	h=To:Subject:From:Message-Id:Date;
	bh=1UPcOKUi2oeay95CxgAO4LcfhJdf384laB4AuuT1llM=;
	b=R62ox13G/Z3sFd/AnJlcOQD73ok3CPkSq7mjnVeOXhzqVXR0/Mf3VyMm/spbVhhk
	/eLYr/rGO9msFJoXEVDpKb/SsUhnWxA2KPMar9l8QwlP7noVkoHY4c8jiGkE6w/8QQI
	dH8RYIK4uTGa9um4qudPYn85IBfDHSv/0x9UuIUg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646802685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1UPcOKUi2oeay95CxgAO4LcfhJdf384laB4AuuT1llM=;
	b=f1iytfaHjN6xp7HwaV0GUo2kI7WkUD2kaMkn2dTQdzB/hA2Uc9bBBJl3pz4nGgbf
	cIe8YURG27ejmfN2KHGC/kkFLuYFs5D2CBnpu0mU+cZ+ritrrLSrq4IJdWN0evQ08zR
	A1w8i9IMBcEsPn/PgKZtWRc5UyT7IMwLDXoVJwYs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d16cb88-ae7ce408-3107-4bcb-9e58-0fa487609ba5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2c161f1f9bdd9b3e52f1bbe27b72cb8104c7479fafacbaf48bdc737f88d7683
Date: Wed, 9 Mar 2022 05:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646802684
