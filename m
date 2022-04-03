Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FFA4698
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 05:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648963378;
	h=To:Subject:From:Message-Id:Date;
	bh=lc8M2jxnWsPnYb8MbOWecYE46x/FBIVYOaSOojBvQNc=;
	b=XSzIwIug5o1b0SbAs1SCgK9x5R4We5dwHc2nfq8AL06bEnBBWY0Z437A1omYx2wf
	BW3kyAMc8Jr9luX/2R4ACBh+j7rsd9P1WevjK5Mf5GqGMoQJyBORELmWq+GT14960rf
	NudANs05APqP1xJI5398fhV8aTek5hXHkLX9XMGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648963378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lc8M2jxnWsPnYb8MbOWecYE46x/FBIVYOaSOojBvQNc=;
	b=CGhumpPi2Og2kpcCLkghnfVqOWvwvQ/2ea5qBHkCXkHozU8FeTQ9XAvzboUttrOt
	qhfV57pTy1UYOmJERgbJudTqZQhQbgj6eypN3+GpUOZ/sByF/HtuTMhsSQK2MgD+h1e
	Dhs0DUT8q/Vauy/ms1GeY8lwaK1+p6SmEZ2rdZew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fede05c78-0e03b7e8-91c8-4761-a5a5-6a42c553f78e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1d90d58053b8f2f85e3503e590397c7d43cc608de7774539d041a2d5bd97e30
Date: Sun, 3 Apr 2022 05:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648963378
