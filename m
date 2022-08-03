Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4940D320A
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659565852;
	h=To:Subject:From:Message-Id:Date;
	bh=iPwgtOixDzuWM0ILQIxuwxMhJqRW622/lPVzfovv8GE=;
	b=C5jcDie1f8bvrMSToVIpUz2hGlkkocki0a61Pq14QICwh666/84gGckPctewgzrd
	VAdmuwREtrL5J0WC2Zo6dnD4R5WUl078IJ8bi4ImN3HRnHSN1Z0h9EHiDWfTBO3Su8Z
	9rddS77X283wY9Aya6UbpEkyjD2/8hj8Si+Dq0gA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659565852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iPwgtOixDzuWM0ILQIxuwxMhJqRW622/lPVzfovv8GE=;
	b=H1baQrQtPSD6eMIjb2dE7ztbzvB1G0vYu6I3DFSC4SNGbovy0o2t6UaXMRq+MeHB
	ibgDja8yxFX2m6dtpycfntsGO3hiryyFepHWapL8dCpe0591CE8KGDrs6wn79WNcvns
	3N1dxd35HB4iNiGMudiE6Pq/m4t0RHL04UP8W+L0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018265d5480a-ef542df6-0ba4-4716-ace9-f12d6cb045c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e994932a8c45abeeefed659506f95dfed0c7c208590718d3811d6b0b04820f3
Date: Wed, 3 Aug 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659565852
