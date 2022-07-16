Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E3A367
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657937212;
	h=To:Subject:From:Message-Id:Date;
	bh=MWEBzDtKzPRjgi4azYVf1+RG56JPHZQHVAMeYfPMdlM=;
	b=UWCpMEuo8xwIoCPeZL0V9ElIaUj1srFOJVQh48WDJjqek7Dph4ER4UeFbL86iyGB
	ZWur2fIkbtEyWDEWKdVglAhrGw9bmPdiaI4Hzzd8nAFT0TqdN0XnJaV94UVjzdMIFed
	bL3fgMl5Tp35+wHldwrjZQD+kbz4fxyn4gDQEw5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657937212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MWEBzDtKzPRjgi4azYVf1+RG56JPHZQHVAMeYfPMdlM=;
	b=EQoxtPQggGceDDahWfIRHUF6MaaumaFBj/Zjo38edMLkADoLxf9UN3YDJQmq2/Kv
	ImnMf9rmcpNyoZgW7+PAnjeEH6KfcGHN/6dfKfg1FmXnbu5q3rLzjpMJ9WPdmQhRG/9
	2uBS++Dc+JxSFNtXrEnwrykXq3VPIeFq6cQlduYo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018204c23371-94f5b43d-c4c0-4ac6-9933-bce4bf9e9d88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd1e96194074cd942904cc6f4de45a5de15d4eeb12a69531d63115a6109b885b
Date: Sat, 16 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657937212
