Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD9C27469
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647297985;
	h=To:Subject:From:Message-Id:Date;
	bh=/BOBGO7tKrJlvA3dwAx8xwxBGIdwVWi7whugKkpSfmM=;
	b=RRPbEArWcMDAFrw1rkRjuGGKnbJnzPFxz2qKuKz2kTiTnJG0h69Uf+UOm3tDLiwW
	gxKNKmfQMDayH2AYopt+aAVFIlm2tzsNa2M3EEpPZPPhohWQv8Lo0T63WKX/VG06Gwm
	LUwv9NFdDV1+XXo638aEjsTZUMDPfflBMaEO9cvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647297985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/BOBGO7tKrJlvA3dwAx8xwxBGIdwVWi7whugKkpSfmM=;
	b=TRkZgHxvDXLWBO67QpQ23sFT4tlYKpyz3fTvCBmwhVZo91cyVn9lfQWdp3DDNo0Z
	HvU/7OWZLgm++RzVx/tl/+JmV+ytPAU9yFzdp1VjoS/Sr0hiiYb3/Ynv6hl/s2qKWPJ
	cWyemwteQah8mE+GPQj1m3aPKnlOLqPZu3DzzmvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a9c799b-a9158eb0-741d-41e2-ac10-5389e37be791-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c9d4ad53a365450e670b3aaa7ea85ce7d347fcf857dbdfbdc2d05254cf9ecbd
Date: Mon, 14 Mar 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647297984
