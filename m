Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3177A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647278784;
	h=To:Subject:From:Message-Id:Date;
	bh=BMRAJvvanpvwAVGKF/8wXnZR5xbemhQtgLAkHM82JOc=;
	b=J0IGZsCTwf0p2Ab+eVwslcdy1op5WQhXwTPMVMqcAx4YWQwjUN8Dj6C619ltq6ei
	qvyMsejEe0usqQ/TIj5SCZx1cxJzx9csjANEnqV/2i/PrhqN2BYSFwRv5oCQOapJw37
	SwOOE4Qvwx/R45nxWNYpFVK5gb68TeyzWf/PzDzs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647278784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BMRAJvvanpvwAVGKF/8wXnZR5xbemhQtgLAkHM82JOc=;
	b=XaiHPzlkD1UfP7OBIRYOiNRBBQEOk5k9ThYDn2LyIWnCioXZro4z4/FuBh/RcZEz
	gyJg4CDa+IFuYoKq8QTZqTHDbReOBbvDaCsk5jqw46w2J2PKicraNMRLbLJTWhgn/lR
	o2jcUILmGrbNrfUcAtUWuPdtYHRgwLtTeMw/cY+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8977810f-62300ca3-6b05-4bed-9b7b-a1f9ba9c3828-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8776d2f035d3c152e6134371bea0eaadb2feed166b36fd82dd601985d2b3f388
Date: Mon, 14 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647278784
