Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F557A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647662784;
	h=To:Subject:From:Message-Id:Date;
	bh=+4+3uuJR21f6/Bs/YaDC9InvDvhAWf4VY+VdaH7aWmw=;
	b=eaJk/LBXBxJdCwJrIOPbs0SZlUAcrvaIdc/M9xy2Xe9wOHyiZ2/AQExOkELO1+xJ
	Bv/DN/yMaP+KSURq6tHOpqCSEKr00Yw2JGJjEoISfxNex7BoIUvsMq4Gdwd8cV+Tets
	99iVNOAPyF++GNtH/2r05bYQnncwHe5zumc6ZrNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647662784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+4+3uuJR21f6/Bs/YaDC9InvDvhAWf4VY+VdaH7aWmw=;
	b=NzV6e65upTNUQadNt+bTN+bH0aK36tu2Yjw0RzuvdW82QlKTehLD3tpxgrQTMH1X
	wGugqEHJd0gm6P/f2HEZTf0h7diPztpkkLfXYVBT7ut3DITpzco7W3oqhyHWDg0VnIe
	1L6rxF7JC+l7XAaYgnaWImC97jW1FYS7PMZYk610=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa05ae109-7eb4f5e1-9036-4b96-a649-1856d3ab7601-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a02d3c0b63f51128e009ca02ab7b8dede4f225273d6103e9a9d808ab38da3331
Date: Sat, 19 Mar 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647662784
