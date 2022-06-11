Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3FE7C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 06:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654927499;
	h=To:Subject:From:Message-Id:Date;
	bh=Z1mKFllGSoolN8aScFup5Vu1G+hGyj/n0TyWYb7WJGU=;
	b=epY0cpwRxt0ABeQYh2EIf99zyF7fKhlt6SsC4O1D19EeD9g1gvURMdYSSyEy6cjU
	zqh2iXtjY3bGKafHUv8Cz9jXT+qVgKzD5H7i3eepABbvU3C2o12RjEMH/CtmR7meIK7
	rsPkvx/LMuWf5d4t5olaXKA8Cfn0aVfTKIP7A7Dc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654927499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z1mKFllGSoolN8aScFup5Vu1G+hGyj/n0TyWYb7WJGU=;
	b=cDM2Mm0RiTbNsn+RJ9psP8obxVP6Xc1w6/Qp4NIlqKH9yofqEboY7iXNtPVo16QO
	d+WRamhkEA3d3H9PJMn7KXigR8bs2ampBGt2xvhUXYhXaaxVp+xYSZMuEi4lVxyeBYp
	/AaXwiiIxbzlda32brXJbdigUpZyJakJXoRBRnXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181515d9ff1-452de104-7f98-446b-a872-74382dc729fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5b96c146d5dd7196f1170c0b49953adadbae1dac83da18e92f12715b32db892
Date: Sat, 11 Jun 2022 06:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654927499
