Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B7787E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646415385;
	h=To:Subject:From:Message-Id:Date;
	bh=iUKlILcuO60UDDCmEqfmaM+82Jf2PWiZAxvh0OMgbPs=;
	b=KQIgp3oyYz87UpyZVg1OVBkFz/YFbpB1igGJO4aSVc9hI5Xl946CK6B2C+Zs0kVE
	iNAxm9DoEJTVrjkEQJfRg1KFa4sEcvVrmfeTY8XSjZq1ChZsjerKyEkHQCitT/PkDOn
	dC3sgo1MvA6OQLiXTHYt5gM1WTQiDLz0c15dF0ko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646415385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iUKlILcuO60UDDCmEqfmaM+82Jf2PWiZAxvh0OMgbPs=;
	b=SQ0bvxtRoNSp2tetqu7SBmcVWUsOykzXR+U9LlaPX0qM+EiF4YKro5yrY5jp/3X0
	jIg3Z97F3GsbWE2W14p+Fe7jF6nrSLE94b2ZWlaDgZwLRDnymCw0+PZwQnEWzy4aWU/
	voG5ZH0AnLQcxVwPLySWKZF1CbvDq5btAm2nlwPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f560110d6-bd7b9e5a-035a-496d-8c3d-1bae730e59c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4494828c9f9bc58d5123935d765e4cfd62f0fc3951dc4143341e9a6f4fcc871
Date: Fri, 4 Mar 2022 17:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646415384
