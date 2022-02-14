Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA4927D
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 08:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644828636;
	h=To:Subject:From:Message-Id:Date;
	bh=iEd9Xw/QYEygXyAeSq+qTFZxoifyQQRisozoMr2ihKk=;
	b=lFLUnuuY0pxcwOoau0v95pRJzScDOExtkjGhEpQIbww5prXL9FlfIGPgcusp6k2q
	F9dcQErJMpueeBzN5maX3r2qb8vflmP09w8uMpEpDf4V4O6cj+NVQY+5nb9XQlfXz2h
	61bJCrxc6tRSTXPbOvOy7Egb1goI6xZykTCaHXmM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644828636;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iEd9Xw/QYEygXyAeSq+qTFZxoifyQQRisozoMr2ihKk=;
	b=LvopaRoxV+NIQn798C3giMIYvNr3mYZfcMgXM5oUqK3+ZGF+4dAwT5Po7xIR/EQa
	Lok24mq3b3VbKRTEv49sBFNbTFuD/rSdeanZxFr1aLiK9il5LEJwOBpBCgKUOzzcnac
	WZY5enOSC564nsj7bpGx2hdl3yIgwr+KF3KzKXQ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef76d32c1-f5ad8a90-40cc-429a-b4cf-2ad049afa4c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ed7c3907ee9aabdf3650060343d73797111c5ee2e6e6e49bc2deb01d6ece564
Date: Mon, 14 Feb 2022 08:50:35 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644828635
