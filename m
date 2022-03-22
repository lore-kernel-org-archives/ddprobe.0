Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842BF621
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647908784;
	h=To:Subject:From:Message-Id:Date;
	bh=QFQYSGLby/F6RaIjyTaL7Fm87Eyoy49WhGMyO7DNkCk=;
	b=NL/QZLID4aZSrXekdOA8Zo4ChkEGW2ipj/rTSjw7FP2+IXIrUWkkUVyAkLcq92fl
	7j6wZUsAEaQNUtlATQN95kNkcwSXnRLkFuJcglbAiFmkv3QeffABAgA+d8llDkbog9U
	ob5KyqVOVpXvNWD1fZyfir36bz4Pt4yu2PdEY6tI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647908784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QFQYSGLby/F6RaIjyTaL7Fm87Eyoy49WhGMyO7DNkCk=;
	b=GOO+vFm4XMHfYlFBrrHDE+9IS80jS6YKWrzGTjPX6+iFgIBo8tSvBvrbI6x4pnNO
	3pJS9ddL51MQpoehnww+Ls200oCdB9H1etPBBG+i9isZ1wyWvxV+uoQ4a7tTXPITZ0X
	Qt1VDGevlrHA7/15opuUJoGcZXZ1k8LoArlyq8jg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf048a81-4e381034-3e73-4050-aee2-e6899bb2f828-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e97e73c0443bad41139a00a070d58181b1b86abf852dd26cd170e9b78ebb5c2
Date: Tue, 22 Mar 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647908784
