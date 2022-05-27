Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE087F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 17:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653670979;
	h=To:Subject:From:Message-Id:Date;
	bh=Ghr+aR/xUBHyVagE0SLJW8yLGRB6vmPlLYXov0A5EvA=;
	b=KdRVfOdTh1Qmyjz2ksS9vaC9vMQOURyyP3pGuw0jXbADl4q94iNF4uC8McsjpCID
	NFOE78lQBPsFiQ7UjHpxis7RPCoKYUMccjXwTOZStTKg9q+CchZ3F3iGY7FTBhUve0W
	gtyPgV8RwuLTrXZgVntCT/sTcwsp+Y0kdQcx2dno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653670979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ghr+aR/xUBHyVagE0SLJW8yLGRB6vmPlLYXov0A5EvA=;
	b=gn7Vol3UZ+P1cbtqaN0nOYyb2+zDCm/l3IR8K53FVBDU5ArACAGrlUoJZmo1N7r2
	EiWOgK8hpACKqGF5uQ3jFC49BwpUECQOSSXeB0k59Nty1aGxekzISbne2DMr8LuHLQ9
	q9uZ7Lo7WfW3cceTZPgc3c3o8B+t2Zkn9JQke3xI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810678a6de-0aa41fa8-0d31-415c-b675-4a2fb9920554-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cf90e141cb6499bcd3a03a2c9dc5ef05194fd8298c6e420f530ff80b132b1f5
Date: Fri, 27 May 2022 17:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653670979
