Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF6D36C
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 05:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653282719;
	h=To:Subject:From:Message-Id:Date;
	bh=PlGqwo44giw3/qmnuI/DS2Ue8XEPdof1iGO1Dc6HWAI=;
	b=gqoUGH8lHBwbkB1oXxAWZCAJZCoXD7XdKyAdhq5EeuRR2Zjr+lFMlczChfISIJvN
	pu4AvdsfWMS+8azrFQVGl4hY+UTCayqrjEhkbmKK+OpacgEK23U45c67pZ8FERISQtp
	FJrbe+NUlJNBjpiivtDtXakMRFzI1+r0EgS1bCog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653282719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PlGqwo44giw3/qmnuI/DS2Ue8XEPdof1iGO1Dc6HWAI=;
	b=cVM2Vs1e1vukhoMpxtQtoQ3N+H2VG2JdjlY56u/utaKKsqwO5i5xuphds3ZmSB7U
	wtu7I83ir20rY4wfpIl5ij2tuespqIwzG+vg8clVPpjYaH5lLOxqulrtJPyBfVHNRrD
	Ma84C3wlfEaKKJzShrNTL7YMKfEPo+C3Zlh0EkcA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ef544608-76b7b792-8da3-4095-81c8-e97f209a12c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 456f0fcda2d03ac2b9fa0b2cb826dd92908b9f576363b68aa362510614a28e96
Date: Mon, 23 May 2022 05:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653282719
