Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDD662F
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657965412;
	h=To:Subject:From:Message-Id:Date;
	bh=0Co/kUUJBX0ZLMaOpcWcVmf6zt95krcwZMKKdF5GqaY=;
	b=HwID/V09ICk+ltEwxM0Dmwz3aNKGm098tegn1rtvP+/wtDLVRwcfBfVmqGjAVRwX
	JCFFbR6sLQ1/wtS4MBuwUkUiHcCXX3pz0vQ+9lo25BUdpSeQZUx7rz0dWuFIDU0jgsk
	dm931Bo96Ir5A049tI+6rwIqK9TZKG0fdDwUNqPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657965412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Co/kUUJBX0ZLMaOpcWcVmf6zt95krcwZMKKdF5GqaY=;
	b=KhjQrJIjD56A9bYIJ3UYipuMurALZ2TiwuoJVuw+byf3cUJ0mM0mV18eM0wkCxc2
	VFLbnylSVJOIbm93DlET58OMwcyri3mk4ilK6pVcIp+h70vqW8+7RB6uv02m9gtAZjG
	wki53ZoDtmi8LFwp9736o2Jy8fsiSrzxPeyKpb7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018206707fa7-76e04951-112d-4ab4-a226-7f6290225a2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b7ad17d71864fc0ec5586f022a90ef7b9ff34c250f80af32a08ae75643e3729
Date: Sat, 16 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657965412
