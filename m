Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E18517C9
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 01:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651626478;
	h=To:Subject:From:Message-Id:Date;
	bh=GyQgO5VGMlGdoCwUMxw46rkGHWWIqGv3/Ji1nqkJuBs=;
	b=lArQUBufYVjmOl6INUK1OXvx+IJFbC01oXibJbYQ7/hBc2hI04Xt34aha4XC90Dj
	g6QVdL/ELlZsSGMhtM2KiWMZrIlclDKLUYFRQ3TJMcS6TQpMFA1LiLhTxUz40C8SsBN
	R0hs/u63p450GV5yHsZwVbkQo+3moZL5pJYBrRE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651626478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GyQgO5VGMlGdoCwUMxw46rkGHWWIqGv3/Ji1nqkJuBs=;
	b=DFQTGWuJL8L3lMB9RF5drVkjHA7u9jnh5D8oRI9M75/2SkpXtyKmn+JL2xcu6MC2
	Mv+sbWVR0DX7ux2UyMxzu3XQ2uBSwPM7/Tm4K1YaAPMar+ZvOF6oR40+ABVYuCC+B7s
	/t0DIEfMbr9aXxlPkiL//jJihTYV9o06BISFlPIw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808c9c0a9d-2ddb1102-2740-453a-82ff-4ffaacd60717-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c0bd766dde101cd177dcbe898f13f0d15f8d91d58c8489ed0846514ab8a23ad
Date: Wed, 4 May 2022 01:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651626478
