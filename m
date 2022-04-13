Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020CE28EE
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 11:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649847838;
	h=To:Subject:From:Message-Id:Date;
	bh=oAvb87ocQ6gJX6WdghAoPvLM61Laq4IRW+objEjkZO8=;
	b=BNAuqzINMeZC7v8rggNAWL78fP7QnmSpXMnJ3BEtoiTTm+5gayc6CqCGTuwIlajy
	CMxOFUPq+IQOJgLavWNbXn/YlBZN/xq0/s5+q3zCR2ZO50KMw+N/OLzUKQJvzthonO+
	TwgrxyizjivNxyndsUNeQFokmXP2qw58b+Ls7HTk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649847838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oAvb87ocQ6gJX6WdghAoPvLM61Laq4IRW+objEjkZO8=;
	b=Dg5UL2/EamiUbDOivZXAOQ26tFBljBwbKC6x4p0nEEC3xscEqLoEowzP36IdfzW1
	Hdiiolswgnm9Ey2afgVY6vPp6GnJK58IgYYaB3s+VHM2v3uK3A0JGD7EOGGWwmMirzj
	6ie+Jj5YKXjyEFo83xBscxgc9Tn4GZ5tKWLNMcVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018022982658-2724d165-d7ed-4007-b6e3-9eaa64c4f6a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d78483e58f3d32fcb4f23569721483ff09adc0c24ecc5e3714642800fb44944
Date: Wed, 13 Apr 2022 11:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649847838
