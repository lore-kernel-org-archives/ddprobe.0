Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D4E7C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 13:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650894838;
	h=To:Subject:From:Message-Id:Date;
	bh=5nhEwEu8DuFs3E/k9GtIAFaG0zmPCutHx3yr4THjMFc=;
	b=hqeOWy5ycUzlXn1m0BlqrtNDePE8JFaDtkA7TcHOdQmgLQbbGzYoCekzQzbWyNzT
	97yoYsn+Ul9ibnA7J2mRRojglyyCLCQcKQGz9o64nL5ddiCOKb5j2eh11Gq0i06ItCU
	ReuDK7HYRghzQgX6XWvdzNIJCC6D8rdMBNFWF4aM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650894838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5nhEwEu8DuFs3E/k9GtIAFaG0zmPCutHx3yr4THjMFc=;
	b=K6O+6OmXHum1+3qanAjxD3zvLC+BW2JExleoCNjijLajRZ1cSq0BAGmnrShMNdn9
	axqaKYSujhhHx15SkyTsowMB248hwzCgF4ZJjLXloniLFO4e/+iBE5tYgWDkgArBHxB
	d8KLz14bed9iPQOldaxfrt1MwrAoJ4sbWvqSreJE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018061001a56-89302a13-0c6d-4481-aa3a-53bc2cd20967-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d200432b7ca104e4f63ef05ada572c348ce68596de1429327baedb19af32f91
Date: Mon, 25 Apr 2022 13:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650894838
