Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491362F2A
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661023252;
	h=To:Subject:From:Message-Id:Date;
	bh=kO3V8Cv7vDAPsVW+qWnVClYWg/cUp9K/IUvysVhhElY=;
	b=AW1B03KCZD/gsgTnzhdcRkUlmXFOaybI33yLnimXubBSxJBUXc1Ip5rKQklNoe8g
	PCRR3jQgKtbCJNzgSAN0jhcFCHETlAkRzgn40bxPqVx3VOJeUB7Jh8DzEZqwXnQn6JU
	d2bxo1hMGOKmvDpj87HlwVw4M3SWwlIBNFVxGDkM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661023252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kO3V8Cv7vDAPsVW+qWnVClYWg/cUp9K/IUvysVhhElY=;
	b=bb+BY+3W17R8BMcD8CHWqQ56w/B4G83szYr4wU7tHwAeqhWjoM1Q629Yu43tMKXH
	9iHNl2FKsu+q8EFCKeFXOGKuVz3x86HpEQ14B7uZnlwe/TJamhS6GDqTdqb5WYnM1ZL
	msYEgiZiREfGttNDQXQB0OH63DUYCqIvrT4lITFs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bcb37044-f08ce54d-4c56-4d5d-bf6b-51345ed9cf30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e4cb0e8dc35c4d1584b36f6f09a6762bf4379fed224cc379c0e24ab010d51dc
Date: Sat, 20 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661023252
