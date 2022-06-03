Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507327E9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 00:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654216319;
	h=To:Subject:From:Message-Id:Date;
	bh=22XlUXA2sT26lBk/ZFP5SsOA5lE/zdEbscY6OMBYOms=;
	b=Jvn0kYadNwSpoCZ360J61wDS9d+jXEyOizcsXhNpffGfaD7D7vLOJOoBK98+4Xkx
	shugrHH4dXROOwTuuWwr3QI97vfUdDuBOfOPJYO4iUnmhoufUFVz6xPxAdvbbpWKAvH
	od0m5wKGuEHeCBb7oI1x5d16feRiItm8OO9SHkeU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654216319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=22XlUXA2sT26lBk/ZFP5SsOA5lE/zdEbscY6OMBYOms=;
	b=PXRNyOliYXeF9eyrjxsD6QNDaT/VatbNsnb1upuPYbzZKPZDZc9/AXwmtt+hob6h
	24hhgT54SpBztyFKjaYbzAhX8pnNkWyQu7ey5V0cWpsRv/IVe2bQ7DVlt3J8dYMcrgL
	f+IqZkdXoQ+/GAS5cpb26+22w2lVTcMZLpPeQwIw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018126f9e120-ecef49cb-305d-49f9-8f2d-cb6862995441-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecfc06b8ce1919db062e38e91b3cd6f0002f2be9d1ef931a6fcbfdf1f15d28e9
Date: Fri, 3 Jun 2022 00:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654216319
