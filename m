Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0AE15AB
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 02:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649991598;
	h=To:Subject:From:Message-Id:Date;
	bh=mX/3W33Q6fKZ1ooSkzMCzSJtWscYyIEAB2sQeEz5PWc=;
	b=MZ1gaGHl7ELvdkOLU44CRMyDzlYVbac2IBarG6QiuYwma8gOLL5KY+Zcg6GAhbUQ
	k8RZk1xp++ABPA258AOMn5zznpXHjGZwzg7QdELtgXlq8Gvf6e4OcR6A99xc6A45lfS
	sGm0k9sPZAVW2vw8MOKLiMboNnpyUX9y3LDKQUpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649991598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mX/3W33Q6fKZ1ooSkzMCzSJtWscYyIEAB2sQeEz5PWc=;
	b=ch+6xPlv6FmwW/mdW23z7GfJWgj2+I3ECK7BIpzrHNgVX1PhmQXDzuD4uxGG6IyI
	h/34Z0VsLov62Ig1ZcUh1IHhbEQt4rGAHc4aGFWQEjmFUKFAQCShNYQeoKofh7nH5C/
	+Cla6HdJGfduAFHITk32+WyDWfmJNResPftnx+fs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802b29c0d8-fe1f78e4-3a36-4ccd-884a-a5e467cd9a7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffa0beef41ccd4f70323be13daa108df64bb0557241948806eab3a11715798de
Date: Fri, 15 Apr 2022 02:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649991598
