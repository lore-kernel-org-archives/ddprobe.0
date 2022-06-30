Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DF433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656601012;
	h=To:Subject:From:Message-Id:Date;
	bh=wfwRl++I2+do3dC7MuOHlMGW71MHrXcwZebNaI7xj7o=;
	b=gxl2bZs9GvJxSCfT5qSxLnDGCK9YvGpaXaTgEMtpb86rZyrbQ5mselpK26nrMnls
	EPv2K/EJoGwofWYyI8sY4+J3Qd8VQ6FB3IcHw++UPfREf2A+zVjBSDmW9b6Ste7PK07
	raXi+M0yheOCDKjfx/tjC0P8Jq/hdoeJ7mD79Ndo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656601012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wfwRl++I2+do3dC7MuOHlMGW71MHrXcwZebNaI7xj7o=;
	b=MZPEpXlRD1vpvVh2WI+hvF1WtNrHuyGdhhxudebHCCViUQ30P8Jl/ciIcJmFlt4T
	tIcayNpVSVwU6Sh9GUo79YW2/wUi9OXdSHpPdFWTQplsqb8+XfbVQAkDWGXMG0VUMwP
	6hJdyIMCGPsb+i8fSqlok1lHrRjVGFJr0H50WCq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b51d6840-4a17e100-600a-47d0-be73-1bf2cb987a3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc04751a3ad3572cf3522a9f189c20660a92041a609edaaa890635a2c15a864e
Date: Thu, 30 Jun 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656601012
