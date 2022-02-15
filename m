Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E831376
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644918384;
	h=To:Subject:From:Message-Id:Date;
	bh=WSFpArhT2skkp6B6iH6Zl/3Ht4+b6ebaTv+4RsxDjJ8=;
	b=a1fKlWonP3sz7OjSVIAqv8Sfic8ExYADwUSNYc/GWmEC2zDst/UjbYDDD6K9NnUG
	lq2ouvfhx7a2Aj10ZI9Dxh7TnsOZkkEjMIe70d7yx3aZjJ9Iz39+YkgMCMOcBvTmXCq
	d+/vdifCqW6+fSTtQNZ7+6ZlXPkdoT0kuvIjBBBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644918384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WSFpArhT2skkp6B6iH6Zl/3Ht4+b6ebaTv+4RsxDjJ8=;
	b=Xu7MOZY+E/g1mBGBTW7oAyfWPbqYWMxPZD/K0eZ8V3qwy3zNPpyrxzZ7Qtu8R1Zb
	8YHS0SaQkDxG4koIGK8Vi8u3pc58RmGWIcA+og8dDi6egew9CB8svcuBrDTx0mr8ERh
	F5wvLpofmY0EhEbqLa1FmDVemZ0jK5QIUZJk0oo4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efcc6a869-f43da3fc-224a-4087-a7dc-996f3f3685df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3a9a00c2097427103b17796db4cadbfe5dc4ccd46930469d87611587469cdf6
Date: Tue, 15 Feb 2022 09:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644918384
