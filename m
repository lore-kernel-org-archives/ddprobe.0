Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1969A31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647939385;
	h=To:Subject:From:Message-Id:Date;
	bh=445kpfx1c/VdZE3xF317++ddAgbEPo9yrfrvQKb56SY=;
	b=OA7NOsSua5FFnxzne02+eP30qAJ4GEtGJtDkZXEF+mDfSKe1rWCXTSr61Aum4dXc
	9p4ITPixsjvpe9vqYN3YmIRWyfYyY3JV/lnfslBI3FiQgiWEIg3TYPB0UlPhs5AcyGz
	fVFIhPj5WnGdPwSRQkLa12QX/vCMdC0zLsPMMt3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647939385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=445kpfx1c/VdZE3xF317++ddAgbEPo9yrfrvQKb56SY=;
	b=AvveuuFQvr8jjoVx10XotgcXgLswW9k/kijJjG6ByxYGQ332dK/yFb+FFicDzPAo
	aH2Msl6Btx7W0ImoN3cbwd0Ru6ilB7OLCfedcteTkmjt4UO1DEwdDyoBbcoX3VLE/Rm
	nGKOI1T+KsWIcK9F/jqvYdTv78lHgLeNNiNsYHY0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0d775d1-1c593aa5-5512-4afc-899d-1fe43d569a86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9c8e00c25043bdbaa208b63279435ec8b36132246bd94496622664d5eab0e27
Date: Tue, 22 Mar 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647939384
