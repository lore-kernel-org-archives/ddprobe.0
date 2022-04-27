Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC6D7E
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 02:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651027738;
	h=To:Subject:From:Message-Id:Date;
	bh=HTIM2rrVB/e3E4ptNWjEhOE8hj+mzVXgNLOScPVTzp8=;
	b=f1CIYluq18xQ02n8keDoZvUDyAGUoc35mtoB8fHbArm7XN8G0Mz9nXE1GRRgX4D5
	xud0xhJ31Z4eCe+zUjTyZPum7z7n2LSWyZVIijRi5iLCj+nSK1HKLPpnEhkmDrTYpQn
	kimUuHRgxCDh0l1+48Jb/Kbnj6BafuOeRcb6ht5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651027738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HTIM2rrVB/e3E4ptNWjEhOE8hj+mzVXgNLOScPVTzp8=;
	b=RPxdva5Z3vKPLh7bzpxPS/1grH0/NICQ+kVaGY/Cgnu135AXBUMER6Cu8f1qcLyg
	DOtNmo+OKdzgClpwdudUIeSnDhxYg9DQhiEquo1ce1Hkh1hVCcQVZm4X9KHgnsfmAog
	zeYUfue4Hrvhg5m9tvlcBMba6ifuG8AS66FhsB4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018068ebfe64-c74c9f5a-ce8c-4c2b-84c2-048044078fea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e597024134656e785a0eb744a4b67d76b488591ebfc13bb95b5d2fdb0019a5a
Date: Wed, 27 Apr 2022 02:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651027738
