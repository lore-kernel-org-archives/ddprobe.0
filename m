Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDDE310E1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 15:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655825159;
	h=To:Subject:From:Message-Id:Date;
	bh=VnSP0Mv0bCBTzLCAXdU4lV2JAA8y32JCtNr96wfV3Rw=;
	b=jIZm6TfcPfnqWVf8+f8BNawkC+BNT3fBZoSVJnZ5uReepl8bR7rdsPoTjwKiEqWH
	6nk9YPBdu38BA+y7fHtJyfkTijzKuk7urhMKlEtf5JSkea9euAyXczvpz0Nmqt5Mttu
	IJjkluCmadHuQw6dbwAnUQgW4kG3IeeHiDckszzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655825159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VnSP0Mv0bCBTzLCAXdU4lV2JAA8y32JCtNr96wfV3Rw=;
	b=ceTBK0A3MtDVHO9I2/XD3qC/Us/pUJfv8MwGEkxSVm3fSfhEKFpYysJsOYglWqLS
	zve0FRs9mm3b46zsCZELBVLW269HNvJ5mAT+1xQqzdnAGX9Pdphz13jeq51sp6rLKqn
	Dy9+zEiOjCqGqGdInvhcOPUYInmlL0usqNt/Ih9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018186ded460-19be5c9e-a233-4ad4-ae10-1a0c0008f53b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c47c2c1fa22d989b0094d14aa1085eaed4dcbf99e8be6e2a2cff788234c53616
Date: Tue, 21 Jun 2022 15:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655825159
