Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3917F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 11:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654600199;
	h=To:Subject:From:Message-Id:Date;
	bh=oL33PiytjfUWtcfxNbLCkly1aMfB10ObAJf0Yg1vxvk=;
	b=jSUuvBl1CdzLkbtz7yt/s5EN9aLDHos9zXNLu36O1idopJKt3HFfe6tIKPfruZtG
	ukZGpMqPwS3riVclSZYWLqsJ4Omz3AyLLipQ3i8IvTJ5QXFRChgLuB5cbM7PFXX3YGO
	1/i4dtM0zPWRwoNOZl8olZuzF4S7VNCR1fR4aMFM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654600199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oL33PiytjfUWtcfxNbLCkly1aMfB10ObAJf0Yg1vxvk=;
	b=XAcnHOQyYRVaDVDlGLFTDKfovjhg5sDQLHHugmibJmSkEkvHYUrVDNgLikQ8F/+5
	5A3lO0iDpR9ZsuPukxF13HftBR+sBJceKCgJU+A+6r/4783Z+fl48iWqDtc5c9YIj1f
	9J24u49tOFBYcYWQCfKoS9KYZqxP7Wf8UHCj0MKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813ddb6c42-75984c2f-c918-4e4e-a7de-0416a930669d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6b61242f3e00fabfbe8c2e560696e51ccdfc597277884c7b65671d9016cf841
Date: Tue, 7 Jun 2022 11:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654600199
