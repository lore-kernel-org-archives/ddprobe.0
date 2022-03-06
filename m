Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B497A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646597784;
	h=To:Subject:From:Message-Id:Date;
	bh=jnskE0pOzFZg/cqkNKHVvvOwHyDp9MZNwkmOZY1k8L0=;
	b=HTAJ4Ab7kmg0Elcw0XSKUfcj3sCTptcENIqwNkTIc7kGfqb1oRZ11V7o+RoT4p8/
	JvLH8K8jpYfyUHrSzWpiqTRXSQUydeX2K7e614c1/Mw8rjLBI2F/C6TkHRhFElviwLP
	kGs2OPoSFWScXcPzDH5qesDJ64STLT4rjlRFShS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646597784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jnskE0pOzFZg/cqkNKHVvvOwHyDp9MZNwkmOZY1k8L0=;
	b=LKCx01JAdWGXjJScG4WsgE9VYIjws0bijTiuPOqiprImn5MMVDrJlSakCBWEljn2
	gZ28yIeX+n0RAUsc9NKJ3uHNw/v88Huq1US4fXQPV7F5mPxeKjNc8UgTD56edNankNv
	cf/9/sOwwvwtGSPr6+6gcwlj50Ez5pT0HIwGZQOU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f60e04493-bc70450d-97ea-4a2a-a942-8fd00f2d2b6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95a591f6548ddd786b60ab085266e11c9092dcb86d347041cc65011bcc250eb5
Date: Sun, 6 Mar 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646597784
