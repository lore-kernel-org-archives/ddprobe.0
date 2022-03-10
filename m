Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D2A7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646915785;
	h=To:Subject:From:Message-Id:Date;
	bh=9NFVRAuKxIzXBBo1t9+076Io2CAslcmObuWsAwOEO2U=;
	b=kK75JtZPWo3kZvjHZJhUw1A6ZkUPJ7UHG1x87504d+biQicNNcApKH2JsVnE3ulN
	VkmaXrsSknD+BuhGrR84StfWD9EqVIUc8mDDtK0A7Nrpsgtnkblpggs5zJfQIM6ZMOy
	eCrYiDQEvtAeskYW2Wy3tMurdNGaDWU4dOLVg9ec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646915785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9NFVRAuKxIzXBBo1t9+076Io2CAslcmObuWsAwOEO2U=;
	b=MK+DmyJcW62mwMhkzz8p2m6zagOVwju8gJppD+J6QB87799QLW7vR2JtA6QOCU3P
	8jG4ywtJaJTGfMFMuH92AVx9KUpRbvur46efpXhIX5TkcWyiBOw31yYeMmFGmCZ/Yr/
	/LPW6Z3q4cwv5LdPtGu2EhpLybUXPW5HPyMxC9L4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73d49051-983af053-3867-40fc-85c8-1126f0ad9844-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfe4b65972f05945a6a5b5b9d6ef21bb5d0a24b4cfb4c59f7c60fa2a384c203c
Date: Thu, 10 Mar 2022 12:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646915784
