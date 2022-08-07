Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D0D87C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659844852;
	h=To:Subject:From:Message-Id:Date;
	bh=FsGgZVSV1bIuYpe6JI/ixquR0a3MBEKpZ2eoqBiKWHQ=;
	b=lXP2WpRNrGCVd327x/9eQJOlDlPWn9t66/cWCX9cLNexG1EfRMCyzuYrh/188fvi
	NefTcGSPgw7MWpmqNi1ZjDTFXUYk7j8jQR2oExyCcYgNi80w/6wLGjjdCaPWVyr+hH9
	+8z98vFfvdAhIDrFbZzqgzN0uWmj2mrOEQPo2Tf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659844852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FsGgZVSV1bIuYpe6JI/ixquR0a3MBEKpZ2eoqBiKWHQ=;
	b=P1T0TDkHwOJLVt2UM3IH4B4jz9kpi5vvPUMlilquKZJom4xn1S259BhGHfYTXcbM
	ksEq3yFDjLYNOLGsE1XzDJ7L0dDRNLsLUf3FsoqQPmwbAjiy/m58rsoNffN2yRS3Uxr
	Hq5475dVehTRPTkxpOGF4mi5pqFBSuupnqHjWpN8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018276767b85-9d24ed28-8c5b-4fce-97dc-8e7022bfa0b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bcfcde7885bd0232133b78cf0dc91539c0602569fdc7bc53c390483d720312b
Date: Sun, 7 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659844852
