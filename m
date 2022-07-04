Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3015615AE
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656924412;
	h=To:Subject:From:Message-Id:Date;
	bh=nAa4Ucs1vJe6l7ePnjrIyKb8jWigyTU5tIXan6NDf3Y=;
	b=dA6qYSzMBrJ6DN0x7Sz+Q0s6lWuswlP26sT7L+xoTjPXK0NZVmiLFEn2xEyil2xg
	PLyWfQL7+SJr3f0oVa6fkCebPmy9yHX77t+4lLxfFRREOY1DAkZNTbJd2orsurM7j5l
	09U+7xLVAwGBCrSTCgt7rgYzM+oATzqNmNb7JRps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656924412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nAa4Ucs1vJe6l7ePnjrIyKb8jWigyTU5tIXan6NDf3Y=;
	b=PLbxXtEgtkghZ9fJd+vyhPj/k9iMicTmgOq5QCbimkpiUmhtu8ZjtLMgUSoEkN7x
	ue/3d3BXX0/4G1EKEYJGuEoVJ2HxcpivFeWySG89r5gcyKeeKqo0M+IHmxNezM0XOok
	D+rGHidM+Vc7FCyrToYFsoppv+7m/dYuaOxUZmqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c8641989-03a06a16-9577-4f61-b36f-014da534c42f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bab41249b5682ade8df96b48fdac5f1fed0805a9953a0f5b29b69d8cba65c4dd
Date: Mon, 4 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656924412
