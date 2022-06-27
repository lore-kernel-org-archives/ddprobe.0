Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1917633E4
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656346012;
	h=To:Subject:From:Message-Id:Date;
	bh=0AWmMLZ/hUaZzD9oMCG8hFb2VHfYlJ2Dw5dG6KMSZ/k=;
	b=jV3o/atBaTfSiaY8jcRppW/9ISJ4irfHMdzgqiVONH/LpaEl6MPDGxU442waI7r/
	LpjeFOD1v9hdGLg+WVVJGoIfT+pABPWIPVkIgTq/gFF074lZHWy8ER0ktn/zm8xGh4M
	zS7WTsI8TSakJKoKnDGosvmyF2he0HumQ1t+UnYg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656346012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0AWmMLZ/hUaZzD9oMCG8hFb2VHfYlJ2Dw5dG6KMSZ/k=;
	b=ZBLNn0aq0n7ut8IbQKVSa8FO7D+jfovVN+n/wp8vTwyinLHfxh87Azi/NVURQsDM
	g57dAMQfrat8peH8xW+4KrpWtzllMM9p/+FDPUgOZl0DZWtSO6EDu4/VSOqz2ewqX3Q
	BmdQLDjl0YXDPe7dJJPM7WxND/i0N+A0DHpYA1ug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a5ea6aa2-9995caf2-54f2-44c4-b348-4a988abf227f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10769aa0e1f0d18b977cc6f74d84dd88de0eb52e14d7482af37e8a9dfda7c9e1
Date: Mon, 27 Jun 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656346012
