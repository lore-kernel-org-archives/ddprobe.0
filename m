Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709A436A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647073884;
	h=To:Subject:From:Message-Id:Date;
	bh=v92XKLBRm733EZdQaPjek8UN/OTqjN0pAowXPA6l2Is=;
	b=GxIgGybcdf6hnUuITKZ26m0n+LsOzANAUn2roXarrKsrZkjZpcDVsU/FeSyUWPR7
	OP7XozdDJ9Qa85Tg3hPNgqngJOLItHgaLPDFfPK07KBob6Npj4Q07ugF5BABxzGugk/
	Ro9k5S8jaV5lV3fbZkjusDYLdc1yqvjl9qhhQYyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647073884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v92XKLBRm733EZdQaPjek8UN/OTqjN0pAowXPA6l2Is=;
	b=MjzoJDA56AGO5+kn0ymkyj2X20X470aTKLZeLqQkDmm5rWghXTPpdh73bNbi0N4z
	/1rmNW//duKlZD3YtpomHBRuNJKuHR9PPkiVYt09FTeBbD+3TpT1GhNTBDXDKUOFatR
	Ztp37K8H8BqJch6RZm85UUV4dYBS7en7Z/K4PfnU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d40fa5b-7a1f0451-be4d-4fc4-803a-62e53c79b994-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cff6e5d5c6ccf76ed3c216bcb047a9400d188e726821d338337b4a381c55ed73
Date: Sat, 12 Mar 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647073884
