Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9057E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660405252;
	h=To:Subject:From:Message-Id:Date;
	bh=armWkG3xv4JcjSpJUuPw2svMNZKXrKBqndgm8cIakLM=;
	b=YJ7daibbS3HH1oPP05r8FKv6FwapVIu+ZZPZfkEyL27njPhaY2Re90ayUeojSIJ5
	MMAsfD1rsjZs70M4huyUq2BhbubzG6tf78MmBYaMrIHPNgVon86Csv97I9lpgmjiWMR
	2U0BzcBWRZJE+MTOBT1RDJx6PJMRNr3boHUCTV0c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660405252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=armWkG3xv4JcjSpJUuPw2svMNZKXrKBqndgm8cIakLM=;
	b=NP2hPfIxkrf8LNdqpENCR7+dSgGUHdb1ykf5q8BLAaWsJetE6m6Sr458qHg1YYub
	Ttbb9wwoHOeITm7bw4mZvcuXDkasqohiArAIVRTTZfv8nZpbooZxmvT3emSP+xC5Vx3
	JI3mBiAh5x0ng/z7UZHQrSyzKIx/6xp1fCHxTlrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018297dd81e9-87118f93-8df3-4235-904f-40013f34b580-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22e4d3c1ea70a2a5f6300e3c1136d7759ba7aef5da0add67c49dbd08daeb9dfc
Date: Sat, 13 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660405252
