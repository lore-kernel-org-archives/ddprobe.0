Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F74D36B
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646389885;
	h=To:Subject:From:Message-Id:Date;
	bh=0AOxNyc9aflr5U77Hv5fzhEys/dJ+yKWb334U9Mbxjs=;
	b=iM2KDpN3CQnSADfISruB15DFQI7a1VdqT4Vr/O58j2Z9bFL0cTpZG/yxzuRB6S5e
	rb635I37754Ms6EvffoBy5aWlm8T71QeC7rUjno+96BXF+RwkxpaIM0z1DtXrKQgSUF
	ti6oL2fv+erV/Iym7VSG9i4q1bTVA4ib5M37Lt08=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646389885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0AOxNyc9aflr5U77Hv5fzhEys/dJ+yKWb334U9Mbxjs=;
	b=ESBPX0AmuObQFzcN6J7170sKiDeJhf7hfKRqzzXQejpCBJKUjpbTLeWpk21ijWwg
	x6OhDBytziUtf//VAJoHnP7hR65f6WGu2VtCm+BoHzjXUGa/NWuo3bAdruLeS4bogaj
	nDipS8Y3uAyR+nzJm/9eTb0Il5uhwGL738EfkrLc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f547bf752-c8020095-1391-4f33-a091-49ed7c2addb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2b20360e320f941c4333c837f80b19ce6e4ab1f0593951c2ab0a974fb0a82a9
Date: Fri, 4 Mar 2022 10:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646389884
