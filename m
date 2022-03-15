Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46183663
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647383184;
	h=To:Subject:From:Message-Id:Date;
	bh=0a+syZk1Hkux1JRX5vyJL087Sq4SeJvDnkkQQf6/PRw=;
	b=TtfIfRy1uWQuzEXjvcJyMwp3a634LJHk9jNhW4wy55yx3ZRL+fLRh1iSC7swzHFn
	CdrvsezSmpC992BTneiU7VUyljWATTdS6DAn0NNJl/fgMnu93o/7ZZMS6oU9FMqHPSA
	+l9XyqcxVTg/KxUTlatQHtUGfly21viFxN4LglLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647383184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0a+syZk1Hkux1JRX5vyJL087Sq4SeJvDnkkQQf6/PRw=;
	b=jEknkUD36+CMjoNwc9yfL4MaI1W8M2MByOj3w1CvhOdOk37gogfjfV/92tjmClmZ
	R1AGoz7I7yDDj/LJPnCbflr6dA4k2hRnWd2ovC+UziUVKiTKZCrO0wq/RgUMPiMLbfs
	recfYElVtsgUoFfDEx4sxqidKzXhM5jb+9UQr4aI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8fb085b2-9557b312-c08e-4eb3-ac9f-00ca80ee4441-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2863f375ea2113e6461a33fae919ba631dd76886f19a19e159beb8df609b8182
Date: Tue, 15 Mar 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647383184
