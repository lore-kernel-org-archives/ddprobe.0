Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2F57E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 05:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648360078;
	h=To:Subject:From:Message-Id:Date;
	bh=xNZXUhr/Eyx5fjotduq5QErytlxzkVtaOoEASJRWI9Y=;
	b=gVfuyjR2rjBwVuA5b4wg7Cwjp57YlRSa9LEyGKt6iXtHq1B3FnAHDFLjx3OEvYgk
	54LpbvJeGfindXWN8hNMRwLMIl/jCXUObA0zxjEjdSr6dxYCV4qQ96aZjwJlIYR0lgA
	xH/50Gm9yuzo/9wfGxp5Y5lfl4kOYiShKSmgDaJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648360078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xNZXUhr/Eyx5fjotduq5QErytlxzkVtaOoEASJRWI9Y=;
	b=IF1PL+iO35FG/FezTu9R9ke7XsEfaAfRGzXSUSjY0OHOH/2GGanKFeNHAU2syNLv
	TYPW7/yM4fil0mCBxMWZC/H6TVE/tyxym9+w8UCA9jEYXA4BSaNSPYT8D0Ewv0ecY3q
	v4R0sP8+u99/sRo6K9BehbzNczexP3uMuqC80UgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc9eabbea-5e1ef803-ac59-4cb6-807d-391f20138d8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e869a1eae050774834406664c717bcbcda0981fa8d1e01c34d31a635b9cdb884
Date: Sun, 27 Mar 2022 05:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648360078
