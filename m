Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045713D9F
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 23:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652227079;
	h=To:Subject:From:Message-Id:Date;
	bh=Z/LTb3LNdCU71yvWoquVIYcolGVOzhRnCJRjOpyokqI=;
	b=iDJ8CnT6maj0gV+Ngv6+EQ9siQqOBJgoHddY03QYNvjdEjMugHbyGKxT1Y+qzk6c
	ubZ9P1JSus+cgVs85w0n2WO9V8p560cTA8eYr80dzHzpmjRQZtuyARfnecM6l4gIHSV
	ISV0RbezFZoxj6S230RJohRm/pHyu5KgSDecWSXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652227079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z/LTb3LNdCU71yvWoquVIYcolGVOzhRnCJRjOpyokqI=;
	b=Te8vT+ZFa8q+Wt6RJ8i9lyLzw0HE1QuAPE7xiZMnbwI6E5SFs3R2/hN0/3VuMI3A
	GzQiKlDmbiY0LGC2ldkvc/X4bVNf49TS3bKz/plMEmylw/RUkVwbQ44ykfj4HF+p0A7
	ZzTFVI++ut004I3glhdf9kSLo7rQHd+ZcThnVABY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b0687c86-51fede47-78b7-44d9-bf3d-200728e71466-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d091b3c979bf8ea01f6fdff2313681d608ede543cb6e7e2223ca26c45ff242a
Date: Tue, 10 May 2022 23:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652227079
