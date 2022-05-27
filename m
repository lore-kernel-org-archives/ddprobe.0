Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BAC1FC8
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 19:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653680159;
	h=To:Subject:From:Message-Id:Date;
	bh=oLqaIifBMuLy+jVpJI4Kq2vLOw87OpiN7IYLMXaJpg0=;
	b=KSVZAvsbTKPVRYsP/FKDIbun7opGiKjpy5QvjqlMqXjzBHHbsrEkKyum902Tw290
	EtsI8vV3GzZeeYXjA08M8qhbGgMmDBy9KkcRVHpZ4BEYmYB/FtqwhPyb7oyQRjV7wWI
	uvRO7vMgBKtgI/bMKV/+qdC3u9nixRcHJVmSDK1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653680159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oLqaIifBMuLy+jVpJI4Kq2vLOw87OpiN7IYLMXaJpg0=;
	b=KsU3dl+8goD62V6jGl+TS0rtKNUAgPOyxEWDm7mTtbgXeFIMMLR2lqTXDMEpeWxf
	Oi9LcOxNgA8WaCYoqCRGRWfsbWEIniYa3OEyno8hOvrscs2bpc3tMCTSNFNgzOda9p8
	J4KIh+Y0z1eU77AkcvXMS6RPk1pIUuyQNIa8SB1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810704ba37-16716096-b2fb-45ec-bce2-dbab4b8e9f5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0985c45dbba28af8f323f3691f6b0d2d3530168c13d533625207551d30cc0383
Date: Fri, 27 May 2022 19:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653680159
