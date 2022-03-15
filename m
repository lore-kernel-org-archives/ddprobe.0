Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F1A1844
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647320785;
	h=To:Subject:From:Message-Id:Date;
	bh=sgFW6NnjIAnQwxCRauSWLN/8bD0BcNuyE98N9Lu1v6I=;
	b=DAHjjCMhBKw5eIZYfDPG8W6TJfhoffCrT5P9u0d+cugMtl9QYp2soxBTfkP0MPmm
	XZaA5f5F6j+8vQaiMHC/yqSTiq9q2f9J3nRKy1g+cZSA6PA/Da5W3OE8VJg7jEPc7yq
	Jw7o78hid/xgGq0S5Ad+NypN3AwpqO7KhLrrVnmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647320785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sgFW6NnjIAnQwxCRauSWLN/8bD0BcNuyE98N9Lu1v6I=;
	b=eymme1M7tlQ4qJaFG20AnJOc+ggr7V59SUfzrf06zbC26JAoAK2l4/0OQ3KJfSW8
	IqhiWkO7d4JvVXwZZgQUNwXJ7twlkifvqS+VRyIkIWOel/ZIbSCEpWyutpY/Zv2Pk/+
	4D2jpVnCpEzuW1VXiVqpJFEZ0kvF1aQ7DcczILjA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8bf85f7c-7be3b48e-793b-436f-a0f1-d214d0024a7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79da08d66a1383bbd7ce5939cc37651d75a9615d9f9b52dc0f76caaa7c88f37b
Date: Tue, 15 Mar 2022 05:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647320784
