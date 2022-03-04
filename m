Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873757A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646373685;
	h=To:Subject:From:Message-Id:Date;
	bh=LqV+1bAeeUwxNMXcGT7LsxeIvWS5e/Nr9MQ9RV7YKYA=;
	b=BQqFDSnl5eeTeUXOimPErRA9ShbQ+pwcX+anDcBovJJwOuoCn8IMZlTZsu0CiF7c
	XXhdAkxbjITjxca07NZNeQzNp1jxRuFFzORV9UcXWNfeesCeUY1ekBy80qIjCP7ZdDa
	EX9Mk6xOy4jVkQW+dUfipIHx3iuYymqBC0fbincA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646373685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LqV+1bAeeUwxNMXcGT7LsxeIvWS5e/Nr9MQ9RV7YKYA=;
	b=IV7gLkNZ1k987HRyzESrDGBOjR9ss3/HGD/nF0kEA/4NOvOW5evZbRB8Y3abFCbX
	IRmkJUCpJghwqEGhoIOXJ7gNlWVm61vf43GJuC1e0JiWWj8XcT/iP353Xv4dDbcnbRH
	mnpv++9b47jbMk0gXNowKo3ovDQ5WiQhDkVdu2Pk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5384c65b-00ba32ae-43b4-452b-b06b-788a8cb30764-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a837c40a1dea4efdc64623050202eac77acda7769792c8317ffb7cfa9cfbdd2d
Date: Fri, 4 Mar 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646373684
