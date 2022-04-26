Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395E72560
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 15:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650988138;
	h=To:Subject:From:Message-Id:Date;
	bh=vbTJtEBKAVgVT0rxiP/wgIBlX0nGPPXxAHi6SW/Uaa8=;
	b=eqMWAW9DHJ3JObKgCBGyFKC1wccY9QEVoC8WTMdGI1ZcaeSJ5iTupUtvZrci984I
	psekdK6t8/DTxD8xavEj+x7PtyF1WEHA9aP2ny+duCV28etVgmf9YJadoyunnLoAGyl
	N8qMeS0lHn59gdbqNhOE0a59h8HWV+Hlw3iQrg3k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650988138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vbTJtEBKAVgVT0rxiP/wgIBlX0nGPPXxAHi6SW/Uaa8=;
	b=FhInUmtHS/LZA2k39PbJWQCOKNMMdMVRSEMQDUXXNIvmnCjWYBcm/b2xIBq+rrXI
	TZ/clCoAzNcDCum7BzxXnb1BFHoxcEsOSarN5gyIzIFzrjUvEolq+gfvPYtRadS5ToZ
	+5G9Zp56DMiOtKFWpdpC/Kc3VrGY7zdKFRkx5tA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180668fbf3b-d5860095-01ef-48c4-968b-b90d02d55cf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cfa3af8b70727191ad9f8bc0775d6cb67cad3bb537ea3fd8295cbcabc8a8b47
Date: Tue, 26 Apr 2022 15:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650988138
