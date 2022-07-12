Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142E47A
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657618012;
	h=To:Subject:From:Message-Id:Date;
	bh=pUJqn+EfaBcbfGQMuA75QBzOB5IpWn936/cxiMT9zoc=;
	b=aSkXijJmkW5ykNFTdhHWbJoWNkE8JQQNBiwkW5azkNOrI1olq83LbLhRWGCUSoSr
	OG5UN7MxYxxHKm0g26+G5ThElPbN5SzdxrM+jQf6nbm4V7oFLKtimn0Z9ecebh+BhhL
	DMImHP90ehcGh77mUzgoHAeAeRuIz9Nj4sOOBqEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657618012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pUJqn+EfaBcbfGQMuA75QBzOB5IpWn936/cxiMT9zoc=;
	b=AuWMdDbLyzOa/sBYw3R1l2kFk/WNgOmrE52/D9EIguiBinyS4/OwfY+ZcbKhbnnD
	obB9y5CvvAi1SFhykxndOEt0Syx9n/DDm686LlE/JziQxmHO0lk3wHkPVbC1UF34+LR
	AP0Z+7xL+lNbgyvm0OdnhDuPzRmu1zDIjXnVQzTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f1bb986b-1195dc73-8819-41ba-b448-94ad4801949b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad37d87aa24d834e940ac40235fba7f95bf0a827231196fc25d59192a5505d88
Date: Tue, 12 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657618012
