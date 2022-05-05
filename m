Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94987F
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 23:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651794058;
	h=To:Subject:From:Message-Id:Date;
	bh=sQg/iXt3VbRbxLvbMl824PEN8hmF4S0ZdIcggVDqKHg=;
	b=fNojKZh8dkNfwI0COTpBAsbWWGF8GpsjhPhPf3JU82iggcGw8/MURvk8N15maYKg
	NdJma23VPHtQSDPA7x48wmhcEwT0uuaNE7xbiDnYoZyJzQmrALKfBBC/OQdfoVotgEA
	KA8hsD+QjcQPQY51aAhMnc8qDIRGyGIRGKlDwRdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651794058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sQg/iXt3VbRbxLvbMl824PEN8hmF4S0ZdIcggVDqKHg=;
	b=KEsgMC++N4/Bv9m+BMAPA7hT8HoNxsPV4yrbv0qkBURe1MRL20kCA+5JGldBl9Kp
	/WHlEMHnQgohnTjPwJDO7uXEr0lZ+a3r5TVZew+laOvIOxdFuZ/qHIaYfqHGV3j6DJE
	2sXhX5jVdq208cgH+XF56G9tdl93cLwSSlVCXgWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018096991bca-56c1e1e0-3217-4316-a6eb-38c7d827f94c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a55b9f5024c0397f6da88ef2b57c966d3d9d180a4d9beef6c06f315afddd7a53
Date: Thu, 5 May 2022 23:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651794058
