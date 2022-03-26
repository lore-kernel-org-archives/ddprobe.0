Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4778C3D61
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 19:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648323658;
	h=To:Subject:From:Message-Id:Date;
	bh=3YpCpxBt43nj5yBud9dPOQe0G60WVuyZzQa9pqTBLZM=;
	b=ZD+oO/o92JU8+2KEOTlEtyezvxIVxvH55AFysjggkrY7oOmkzqqcOG5MBUp6Xctc
	JaGDN8VtpiyGJQhPKtJkmKxFH8nBTQvzUhTwj0ucpy4EpKIC8f04M6wfIGM5d96dcdv
	M9H4xsHkvGimwvnuvc2WqfMk/A121WyblMpK5yv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648323658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3YpCpxBt43nj5yBud9dPOQe0G60WVuyZzQa9pqTBLZM=;
	b=CtgY5OZtAETxalqhNfJXvYRQtRVEBgwopsj8CMXBtxM3CfIxanfbzO9xA2Ibaq/z
	Hr97oLE04MfsPNbcl5ov5S32XSKu3IlMfMHVWm1oQ1ygtQRqV11oRMccc4tTCoH1n/v
	/Kszs09KeNIEJKwcTNsYe2CAV1OVY3oCU/h5NasE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc7bf01ec-cd148605-452d-4546-90a0-71740f309bbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b932766f2e5d48c8da0f8ed29f7eb498799a34acce49475c97973550450e90cd
Date: Sat, 26 Mar 2022 19:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648323658
