Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1369423D6
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 07:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649833558;
	h=To:Subject:From:Message-Id:Date;
	bh=b6x0SYw6APU2wTjlcV5GnDfujdTUfPK+JM59Ttutaaw=;
	b=VH1s89Eah+Bt95Fb124TN+yRDwVrbnRngJbJ15Q65xulcWXWVZBjerFxWcO8Azmz
	hRUtEKfJG/fHIou7lvUeqG8nNvfr/NK796yAhzrmYgFUJPrUH3g8bpmK8K7E5cuxwbq
	u+ClaSeWDh05bCQFIk3YMzQxyvlQQ1tClX7fCPOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649833558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b6x0SYw6APU2wTjlcV5GnDfujdTUfPK+JM59Ttutaaw=;
	b=kvHOnTHasK3gSWvTH6th5k3eYJxOKRvlzwuQf7XkMmXNdpyQgkK3Vya1PzOyzaCk
	Wl5LhmTYp/v7+TcqWYTdVrXxUlIuBWNLo6VWrBb/nhvz7XLXxTKdmHxx43DYAxrRw3o
	W0D/iwX8dAxYra2YabC3P8FaISzwurkQps7M4XWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018021be416b-bb71a30b-b328-4e29-9fe5-3130fc806556-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1886940aa6e3b700cbef14d9dd3ae69ac1bfa4a0dc8d60de9739fbdd5bf87545
Date: Wed, 13 Apr 2022 07:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649833558
