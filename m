Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176663D65
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 23:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654643579;
	h=To:Subject:From:Message-Id:Date;
	bh=MO2+eg83sb5LHRWIvdEVmHAEXvVCrSvdPB1jtXSGNcg=;
	b=Hub/KjaRhNkcWbMGSFs8Cpjjxeq2QWNktF1vEqxn5K/EDdkyxEwfXN3tnW2Qt3An
	AauMF9HQP+kAB5Bvqj6Qn+vwxKkqy2v4HnvFrEC+4uyc+cP3BNMESCGsagc2NEhBzc1
	ayv0HX0sGfVqBa9h03iy3lLUVJSKK8h1WvUZN698=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654643579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MO2+eg83sb5LHRWIvdEVmHAEXvVCrSvdPB1jtXSGNcg=;
	b=RhuEQyCXxPPSpns5wXE8JyXZQkf6mHTvrDWQEzcdCN74NzMIxeXynaSmx2t77Gg6
	/CrCGTL8+c3WUtSQNkFb0Ud4PpUM7AvAmwMATumYWwBu6R2HKa6Rho7ZzNOv+RIrlsf
	3SIIxqVDlWOrs4cBMFGWMKmB/SCAH6wbKJ8AqSys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018140715983-023fedb3-3cde-477e-8bdb-0e7d12276156-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f55b1310af069509bad5c63e109400e88b65b2ea567520d48356528f4080b7c
Date: Tue, 7 Jun 2022 23:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654643579
