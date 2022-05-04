Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C48A29AA
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 18:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651687918;
	h=To:Subject:From:Message-Id:Date;
	bh=DFXAMZidUAeAgETCYgIm/vOn7+Dr42SA8qDmakQ8FXI=;
	b=HjLRMhomBwDNaxi1SsTeD1nkKXLyW2/2AB2pgLoCERFtq3NcX1RZPKtSOVirZ2oE
	4HTOXGdlnrenv9L0ENwweUgSopyXWOd1+q2hHREPEalaIeNkjd38I7VUMWmX8A+tBLo
	J9mj4C6aAsoRj/kVruS/ELyRoYXAuDRNTSA42E7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651687918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DFXAMZidUAeAgETCYgIm/vOn7+Dr42SA8qDmakQ8FXI=;
	b=MAd9F4EsBduJ0DDjrNmeiVtnbNuZOBOd37SzjrIENXnDqc3q/6vh7ffo+po8lerN
	X2R2Lj4utykzAqHvsqEbKHSLU/sJcU2uatVBzIW/dHrQYbQyotARodXShVOPjVl3o1o
	csrpOWeXwpgISus66TMogcp1SJmLjUGk87nISZ/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018090458ab5-abcbadb0-ea4a-498e-884d-a20df7254335-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72dc7578d0fec60a752072ffde360e444dad0bc41f93caa41383cd9e0bb455e2
Date: Wed, 4 May 2022 18:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651687918
