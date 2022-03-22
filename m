Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4BD67A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647910584;
	h=To:Subject:From:Message-Id:Date;
	bh=KaZA8NfXAT1ZeYjjLZqPx631znMP20kDSOvAQK34Qlo=;
	b=eVZVDBA417Qlmg5lP+IwR9eNCOoUcqKJAuITAMlJgHxkTNq1aePqOPIjjOykLEaM
	tst1GCBsiDdjF5Q0AtzgSp0rWY/33zMwx+EenvtvFGARAcBps/NW+vQ/7eTwIkk3XCT
	naMS0IbLHiCpW9PR3mgR9aZ0IfZC6+dJvNsPCmQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647910584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KaZA8NfXAT1ZeYjjLZqPx631znMP20kDSOvAQK34Qlo=;
	b=GWNMjhQwqsPEQfWR0wv5B6+C57GY7xMwMmw5vva8FNsgy7CUrbHPpiKVhf6JaFh8
	fVcFHo3uCXxwtDZv4ZKYvn9FpY7lv9ZGR0PDF7ZQ52lBcC7iFjsHliIgaVkIdsb5V9o
	MSUbt4mzEea88pV08Wa8PXuDRtgoySHh+OuSYb7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf2001f5-29a953be-182a-4bd9-ae4c-281e48e29798-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb03e284699bab60b240df723c0707ae6be572dbb6aa6bda317a0ae38b8e137f
Date: Tue, 22 Mar 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647910584
