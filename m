Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B76110E9
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 01:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648863178;
	h=To:Subject:From:Message-Id:Date;
	bh=5jm6aekNtBbVDSS8AQiUHg0HcpRHXazrBhcYoaFFpzI=;
	b=OnapEnWoZBU5VPzXCKVoMCqch5t7du/THzHy55kbYHppSSTgRaS4l+JtOjRTlr1w
	8PJjq8b4Zluyq2mFuUyxlvmDJ6b07/dC/fSZkekovqsiUmkQuCOHjRVn3cfynPwyeAz
	SztuJHn4grFN1fEe1D05FTr80+dniH8nAEzFrkA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648863178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5jm6aekNtBbVDSS8AQiUHg0HcpRHXazrBhcYoaFFpzI=;
	b=EH8SSliubiZyR1JUl58XX9XKiBw7DsaA3KqkEypODT0vTHm5IIzYmuP4nAkvXBy5
	6cyalWzbhpExt1ntZfIuovC3LV/758HkLnWEIi76ApWoir2efP7eHlgZjondErp0eU9
	2LuDEykli667+jVu2lgPxob4RRjF4tAMRzvmZhf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe7e76e67-526aa70d-f3de-4fcb-9763-f06f8b995b7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b22b52b772f99583cf8a9cb13ab26b3469b8a634d4e3929bcf972a905f3fec6
Date: Sat, 2 Apr 2022 01:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648863178
