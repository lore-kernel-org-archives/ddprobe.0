Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC99EA4
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 11:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657367212;
	h=To:Subject:From:Message-Id:Date;
	bh=k7/9r21J320k9eXYN3JgYVMDQeTU8V2p8apGgx/aJCo=;
	b=WQ5+eO6OG3ePnWlZFBlSRfAEfaG4Lo6jWC4m43kqcvBYaHE5QCa+AYahqeljAMe0
	sdVEDUkEU8+6jeChVuCeV1ASaxlaUUGX6B3au8nM7Vv2u3RsB/5MpXbIGTdEUntrdVn
	wzyrc/jZ1ZiBAs8v555SJP74+1Oy6Qh+6OFcvStk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657367212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k7/9r21J320k9eXYN3JgYVMDQeTU8V2p8apGgx/aJCo=;
	b=VCsXM5CnAnDcqBRV2MaQu2g/vYYZhIjReLiC+oRYUYFPQinAJNB125GeiiOBDQTB
	4vwAa+VucQxanFZCrgcoppkD+r7C4EZbXbEAcAI6KX9XWl5B9oiwVLpqMP0FW472t/w
	Y/3/i8Ll7p3NF0aJEV7GWk6TfSOMrPjRB3iT1Mxo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e2c8b124-5786d793-b81f-4c27-a1a8-037fbd5e155f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a948919b49d428a95049172fa8de41506bb102bcb057c70f195f54ccc9702c70
Date: Sat, 9 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657367212
