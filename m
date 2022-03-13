Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 955132F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647201384;
	h=To:Subject:From:Message-Id:Date;
	bh=4QSckFNXX7aks2oWuGKs1aJ6hHbpdL1Uq1fUy3OEXyI=;
	b=gtQo9ZB8ungtyYxrqr7zMCTjb51SSTJUxSdTlwPl/v4gtXgQ7T73OGHecj34amki
	WUb+xNOuOH38uRdHEIlQh84HQFqW3LWJk3aDBjsQ1ooeLM6iB3a/w1jyU+e5E7SFIav
	HAUDXh+jgvrLg4MNDRGjLBYb4R/v4mjaF+bL790A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647201384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4QSckFNXX7aks2oWuGKs1aJ6hHbpdL1Uq1fUy3OEXyI=;
	b=bvOI8FQcnyrSb6vd4hG43UY+iLxXIXRXIW9SSBlOqtKzi0DjhL93dNNBrMfOUcY3
	HrjrO8bT6aFt0XhfFTjBn9ffnL5CGOU4lP52OGD0oAh6Z7ncFhUFM/6O9hxm2XTmz9W
	pH0NZtXKqaZMgGM8xUJhDQPxe3hdK03p516CHQKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84da794e-83dec9c6-03df-4922-8515-4114e67a34bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b3b59b7ac283463864f3f49a2dbccda58aa33135f49a05e388baf4cf1622c3e
Date: Sun, 13 Mar 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647201384
