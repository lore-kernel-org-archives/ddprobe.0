Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF091855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647260184;
	h=To:Subject:From:Message-Id:Date;
	bh=tXtPylCnW0ptZX+YoY0Ue6d7Q0b26yVKaPES496vrwA=;
	b=mlONOXjyxwAeYgbOcDlxLXzTRQ9kDO6KMMG7BNH3Nnh8B14A/xLqr/KxJMUch9sN
	E1JMYUPRf8PhF7HtvI4P65T9LTsKTm3US9eTrCSjb7j3+35mMor92ohzmOzSB24K/is
	RN7UmcW3tkiX0T01yA65TCux5wOP85FeWbI8ytBM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647260184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tXtPylCnW0ptZX+YoY0Ue6d7Q0b26yVKaPES496vrwA=;
	b=Jvz/WL78oW4mPH4dlgVkzebNA29wb3xDpLDZOuN2t3eCX6sdr3gE/d5v/HMpr7mV
	6Ic0oc9QoZjvAfHgun/dzYHTiRjdY2OEgrf+0cgB7/nAxSWO/mvFbWCVTkhR5d40kWM
	fJkCcojDgXs+pBl0EiVwNnbR3AUcAtW2bIH8kvuA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f885bb09f-791f51ff-8709-43aa-be1e-332b64165ad9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72795ec39a1bab50a6adf7add16c3153054ab96313d287cfc8b512c2a4ed77ee
Date: Mon, 14 Mar 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647260184
