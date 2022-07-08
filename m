Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849527A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 19:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657309612;
	h=To:Subject:From:Message-Id:Date;
	bh=f06bUCyRMRBD5U0DZqTgcoAXvBMyiZb6RNCS8XI5Xyw=;
	b=cpuE39JsCe9kK8ZvXDx4liizgYqkKGzi2gUvowN/eK4bntVUO1CpgwnElecqsRyq
	iz0xUaYXaazwYv04n0xaJDZtEH6/nHve36JFneHEHKdg/8fk+GLwFYysszWk+mEhuCH
	sBdohXPUab9+ZQfNka6leF6e1g9bQH/umhqxFRF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657309612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f06bUCyRMRBD5U0DZqTgcoAXvBMyiZb6RNCS8XI5Xyw=;
	b=RRLObcDzpq5reojFzwaQttFWI49N5K/4nAFHYYv6U1qRxr19p6Z/SyVsg5GSvdGF
	JXY8kTwWvh3KiNWdbcD6uku8PNobdxkBkii5fdnZ64hWmMLo+Nzzkb1CG1PI5KiyOn8
	2AUViiFbeHxfJWXcXixU+akqy6oKiTYaYV43KDN0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df59c931-7698bf75-49d0-440c-98e9-3c5421457366-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74283410a5e7765ef208a84b0831fefe4a85efbe137222cf7d4ecf6ad47e3c2f
Date: Fri, 8 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657309612
