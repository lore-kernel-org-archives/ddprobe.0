Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7608E7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646991684;
	h=To:Subject:From:Message-Id:Date;
	bh=HN9R0+d//4ioh1dAFEKdb7yRgWlMb36MYJmSKpYSkO0=;
	b=K8PpGqFAjP2k7Gzv7qrLcSry0MOcHiEX39c5mgIKo1d4vcW1g2a9PBdqADZjcS8G
	RrrLet5edR7cuhe0KRnMMV4mnhV7mOBkMyRMW6DJUn2rVEon8784xxDR4T5SyKrUwfl
	LpyKcCRGhF55QwgjhR3odovI3QXGZP1rQlQBDHhE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646991684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HN9R0+d//4ioh1dAFEKdb7yRgWlMb36MYJmSKpYSkO0=;
	b=VdguwLjYJDv82cQnQD/XxF801Hm9kFNOOUqL5i4SK8a4J/vWFpHcychJtSMC99ED
	vQ8+WWWWlQHhfcgCGr7CvQfEyEQyhdc1NjnsBCevZVe9FKR0ePXUKNUDM6cLwTy9V5h
	FLDHuwCUxqH62Dizrm9OZiD4u0hi/tJ/UHplSWWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f785ab4a4-6943a26c-9d0e-44b5-be6e-1010190822f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41b419621bede53d59fedde6d1b96624912be555ea211d20b025cc65483ec1e7
Date: Fri, 11 Mar 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646991684
