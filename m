Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9C17A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659072052;
	h=To:Subject:From:Message-Id:Date;
	bh=ATHUuVPYyR1Yd57nHuAMzUrOpLnQnU1q6jgcAP9IOBo=;
	b=XCeTqRLdM/MBbhiKPesjPzGrlKM/EUNj5WGm4Gyp7g2Oo7bqurGK2C4GhOU+TlhG
	GctyXBiMDx9w8QSgfAuTWKlbJmonVYKQQ/cdfMH8L/nRqfxQGSPG1y3IfcLPKuES6dc
	tjrIUzC9N2SUjq1jxgkfYsNTR7FQ3+caYca3rMaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659072052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ATHUuVPYyR1Yd57nHuAMzUrOpLnQnU1q6jgcAP9IOBo=;
	b=bLdiM5IPJT8OhU9Ux4iWv+ZMVPHYPrw+7K63Eiyu1dzfs6L2o8sKiiy0R6jXLapS
	7jTRzLZ/2qnIcy1Momi0tasSU/v8GNlZ01RKaf2yq3fECZiEg14rUFTIacXj9zGCto1
	5L85eWqAA5++C4PL/cOODyvSFR1VPh6DtFRazHjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018248667d41-88187112-d468-4e93-8d54-50810cbb2084-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d4a1b0e5b591a43b283dcae41a2bc87bec257654304eab376d9b28225765e48
Date: Fri, 29 Jul 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659072052
