Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E240365
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660281653;
	h=To:Subject:From:Message-Id:Date;
	bh=UOQQE2Sj40Af+4+ch4nEmQwsyjVzayLT1DRsK8I+G1g=;
	b=Enc1/wwnxWSQwQqDEjA0No4l/tovwOdHW89xta/noQqW3c6hQX8ZWtFHGFIXqi6R
	4M9WlNx9rRbm1bdgcOaNnaofHmhl6DtvSuCKXAUd7EGwvdvmJ5/nmb7SBLu931AEFIK
	daQJ5laY9PLWIUcYOGC3FkXak3bIyou0ShxCmEVA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660281653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UOQQE2Sj40Af+4+ch4nEmQwsyjVzayLT1DRsK8I+G1g=;
	b=WE3F49XI1oTwcXECDfzGX4Qabw6fcLMgLUz6EMFC8gJLF7oUeMcjMz0+2TaANm7t
	u5pElf7GoSTPux5wYrjgDesfavDT+Tz5mDkv12HUQkUZ9rq+Ij76VvKT6sdRY0IKjnG
	3akow0pkrT9fB/MGKLl8lR9rNhaeTJxLsmggq/bY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182907f8583-595d0789-08ce-4046-b816-548231d69d00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59e676b42fdc80f023edfe341f51cb3b209d3af05c9e06cb8724a20c58315f86
Date: Fri, 12 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660281652
