Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D7A2F56
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647383784;
	h=To:Subject:From:Message-Id:Date;
	bh=vE2dM5cqve7JPgHszbWGWvGyDorubObhjgtTEDf6XT8=;
	b=WiRrUZlySj7wIXoOjFwpI4j1oNFAOB21g/tDRBMzsGPXOWWSZTkszS9sunTFyNMQ
	VLiofzvtwOhgm6tPFxC72OhALgfCT/t4//vixePIiPESm+02Nrttj03G+0CODDxH01G
	+D+z8ih6GfrbTpbLL3lGgSNt02u5EvJVjhvbJgp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647383784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vE2dM5cqve7JPgHszbWGWvGyDorubObhjgtTEDf6XT8=;
	b=Coq2fBTSRpAZx7czlrE/xm/Fvk9SRPSTyXdE4s/wq13S+ON3BkEMkebvsEaXOwYD
	0wFNAIrE05QJB4oyLmhQNwkB0h8vRpkx0DNAkwTX3W6fYfQkVczoGbea9Gshx3cthV0
	W+hIb0aJZ8312sKliS+GjCP5ca0sNSUHy78O2g+M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8fb9ad4e-37cc5170-86e3-46ad-baa3-6e6089462887-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0746239edf52f1ef0c423a844ea1d41935182ad63d016a6987b2f49245ed1c9b
Date: Tue, 15 Mar 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647383784
