Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA947B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 11:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652181899;
	h=To:Subject:From:Message-Id:Date;
	bh=+aa2D7aB+zkNLFu+D8Vw2ITYcF76iqYR45+EgcRcrLA=;
	b=FRf5PWc7h3CzYQPiFbmMKAmb2h64GNOxS+VSCDTirM+B3yQA/BTBPZDL7LZOROWt
	NGQpk5iFEzs+63pJhxqmrnW2CyL2c9za6HMj4Miw/5eIccnBcC6Tq7sjqsi0uDlUqI8
	TBEvWCT+pTR3/JShQM+Y19dwM14HBHO79qsMUk74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652181899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+aa2D7aB+zkNLFu+D8Vw2ITYcF76iqYR45+EgcRcrLA=;
	b=DueS6UNxv0/rmYsqOQeYZ4gMb4pYTZqqNqp3QPZSowLZLikZasUOEuAvbkDzJPIq
	uRvo7tioweJNOOWeLMyKVxoSQqoQ8ugT91zt9gjWs7ztzT1gS0hQOT5JBCGLcdMRvfv
	GIhQvsPkpClhWuF17BAX6qS5ANatFdnHcEfkb/oc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180adb71850-d162152e-ab7b-45dd-888b-adca40037de9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e366a1e728cc92401eeadab7897f26660efb305ef234cbf2892c6f4e3841bb52
Date: Tue, 10 May 2022 11:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652181899
