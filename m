Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFF27F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 16:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654620599;
	h=To:Subject:From:Message-Id:Date;
	bh=UNU/D/B/+p3T7jpYs1LLf5RI0Wza5UHedoKTL92iuH8=;
	b=A98NZzCjKUA8XMfodSPGDjRjawaJAP3ak8kiO/XFRxzKbkvCdrfnqKBUY2A9WTLt
	gFrNLjA2mq5iAWHEoezwF21R7OUxq0gHFYPysUH6SFdp+MM1RTs0T+/8YNoPH36hW5m
	pFKIrwrjhkPc+IBYrzQIWlfhd8+Gxb6ReDATKWVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654620599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UNU/D/B/+p3T7jpYs1LLf5RI0Wza5UHedoKTL92iuH8=;
	b=VmE6xfertDaEXJmVCBbOrm4L3qRtUclvbJ5GMJr9bCxqMDwJSjjrKkU45Fqu+2FM
	aRQoqAqn0dV2XgxOQ9v9WpAJuONmMse8eBdoD91Abp0aCkzXnXK/cbRCCfOTT/+Ge5H
	iH+YsZuzYWI6YO1wyWLEDHrfQTDelF+Bun+LDpTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f12b3e3-7ce2a7d7-aa90-4e0a-a5a1-1a6b7b4e4dc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64b01837e9bf12d396a22ea0d568a84f0571dd5993f031ca2b7623ea17b1d925
Date: Tue, 7 Jun 2022 16:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654620599
