Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044BD33C3
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 21:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651009378;
	h=To:Subject:From:Message-Id:Date;
	bh=IiRd4btoAh/64HvuYpI+PN5TPxiWMiUari7ynHQvmhw=;
	b=Dcodf4PmCu9m9cDmCZlFFM06khRGpyTj8XRtGzAi9tjLFpMin54EjoIXQlQavO7M
	jcOnDmgymuhLkAWySNU/0dbHA/HSUc+e2epmbftUbM89L9TRY4BoY3X5LLITEybEW/4
	VnFilqGdr3T0l1sQ03/NBjbrGg6Z3ywPHZnr985M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651009378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IiRd4btoAh/64HvuYpI+PN5TPxiWMiUari7ynHQvmhw=;
	b=EQwXOCOFrriV+hDxWFbe1P2ljxixRjsgfdhxKe2ofO3ts1VT0EQ0/V3Y2Td8hr/h
	oaLO3LisuFaC65n1xWUNOzske7ag/k9lg2Jm+DXfxfT4JazQ4wuZPB8YscOp2edixrm
	O949+cwmeTr28Cldk7SLucDgvgfn752BhBn5M3wk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018067d3d7c4-49c96747-f1d3-4f5f-832e-b225bbd1140d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61d53a53c55698a2d3bdf141beeb3818b61daa47790f19646003f003ae55fc8e
Date: Tue, 26 Apr 2022 21:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651009378
