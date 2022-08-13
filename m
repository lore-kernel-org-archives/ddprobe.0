Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABCC3632
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660393853;
	h=To:Subject:From:Message-Id:Date;
	bh=vXYGRot3lvu+4HrXnU4s4K/+EkHQra/TzK4lsYr64K8=;
	b=iHjMR+wbSIUMykM7AkEf3//jBeiZbsPQoWMr2GqbRnKNdUqXR4+KO2JmXi33nsSj
	leOdi5+iSPW1D445NVCFZBLnrJI+mDKThIjoFpzFPNnnDeMZpBVlKcBH0fwqS5lbPtC
	tTM5qRUTQNhzILJmX0WdfIm9nWUZrBCBQzQfOgYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660393853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vXYGRot3lvu+4HrXnU4s4K/+EkHQra/TzK4lsYr64K8=;
	b=SNYhHVD1bhseRCt7epU/Gz9akOs9J2meepbc3S25Z4zRVDoL9jo2KGopShW/uiYg
	Qxx5UoRHPYi5DaBRlQyhwomads3a0ZuS31Hx8z+dbqGDNl7TWNYd/KRqWJ17rKFmPU1
	SmRREo9qq0PCULufcPDOKgdpsRD5YcXc0MGnQRxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182972f8ec2-357c9f6a-2e2e-4c0d-a6c5-0df830cbfca3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d3acc4a6c576738891d1107c38523472cb52b8eb7cdbe8a0f8e22c4831c8e04
Date: Sat, 13 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660393852
