Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DC37E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 01:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646962585;
	h=To:Subject:From:Message-Id:Date;
	bh=6gSknPPVetSwDg9uzcZJ73bB2RG9xJKxvI0kOCYaRYA=;
	b=bEEw4oGbg7lC7kCowGptHX8bBvVvhbXDTmc2yCN1KtS4pjNwKm2hJUCZlfGigVhq
	1kXqP6m7H+2fZAqL6M+6F655PRs/Z+tmJC2cA/U8Ljy4R1AVqUXOz1ncQBzTgdOyhHq
	zDUPOZzo8h4fph7eKeR0G/WINkOI1yWQpi2gbMJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646962585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6gSknPPVetSwDg9uzcZJ73bB2RG9xJKxvI0kOCYaRYA=;
	b=QWvI70j4NdeSVcB78QZFwcSaWC36OnAElHbJOHzyHijAuzJzCiKxu4wFyFkXE1Yt
	83XyEKDN2UK/+LBQvLeuH2jpQedaRdH75+lf1ZRHOuOorzsu1hOndW54vTJ6v1lemPG
	rBnWiaibC8WPmHsoNPjLTVeSLmVg20ePXboc1IBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f769eac80-60f47c80-2370-40ce-8555-6e0ec24d6168-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93625d068067621e77efdb082dea27b45eaa0976efbf09b9c2efc9f8b985e4e0
Date: Fri, 11 Mar 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646962584
