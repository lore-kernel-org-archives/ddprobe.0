Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2C71840
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648031185;
	h=To:Subject:From:Message-Id:Date;
	bh=D1sYGG62/QLR6KRZZ19YE5msLbiEQj/1wK7fzHTVw3U=;
	b=P6NAm9qW0vBpvRG0s9A4834F7G+3EfJZsjBmlcd4XiSuXxKb35F7pYtMY+dKqi8h
	MTs+w8kg5Jbdg4Y+kWzuHZs3LcPLH9xawXQ1lJ4+4BZZCeFFJF2RGHCpgTWs08spQL3
	ugPh5ZKGikKyMVB7MnDZG27HcFn+Xlqph8Z9RDQw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648031185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D1sYGG62/QLR6KRZZ19YE5msLbiEQj/1wK7fzHTVw3U=;
	b=ar7j3Ey9yjtJLd935gmDrI/l+i/T7Daq/biPHQXj6MSTpDPbzuaDnD6R171dK/Au
	dYTj5e10ibER8qgINGE9HQbYKE6iEm2h8bsjX0Hp+q9+pJik8gJsWRTpkEVEOpBgf/2
	RZDjUWq9+Ej5R80ZWqJfEgv8yp0G4CXH0dZO/Z+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb65037cd-7013e2a9-3f3a-4cf4-a387-fb18bd5bef5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a81d97465fe0ed016f274e6126370f6904bcd089ceea468db32bc4c229cf908d
Date: Wed, 23 Mar 2022 10:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648031184
