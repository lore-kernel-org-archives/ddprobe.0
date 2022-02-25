Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1C21FBD
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645786884;
	h=To:Subject:From:Message-Id:Date;
	bh=7+QqaXZircmO9BgMTugKHNRsFzjJ0l2s9lkEAEApa3s=;
	b=F7hTuRAb0UDBfsdkJ8tFGvDZaLzirsmXlNWPccO3IaOt1m1T3hA9EsT9sU9TueTH
	0J5gE8TrmixDRl1hQAlMWAs9d8QiYcg/mlbaqLIl27d7hxL7ybLtLqapnw4iY7YDIzH
	mnWepOEYILHHnTfbklDiF21NVKZi4mC538LQ5M3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645786884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7+QqaXZircmO9BgMTugKHNRsFzjJ0l2s9lkEAEApa3s=;
	b=Am9POnjYcYOFU4zDIA74pCdlt1UE0FZUKUSY8oaJNkf13F9amFNT3gaz9OLZlI9N
	1dmP3y3RpdgOe7plwqoFaCbzVKpF4f0uCP85kEm6ZHcFXQ1XWJ+r7FmzrUDYWyc2UEn
	5paRMaupAG7qYM99HR3n28TGLYqvqQXska5NIf5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f308aea9a-327e204b-9aa9-49ce-868e-499c8bb6ae7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89d1977a0608b44af30e2c6151e7dafc1f7d842215fd900a8fe3b39440527883
Date: Fri, 25 Feb 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645786884
