Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E45D363
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 04:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650946678;
	h=To:Subject:From:Message-Id:Date;
	bh=0rHJuq5ECQu3lF5fLqpV1+EAAOPVLRoLkau5LqDWzUI=;
	b=UJvXHA66WPVbGLTmv6WeuskXzyxU2sUnIOl2e11mYc0U4jIZukhZWB53/LmVA667
	qBPrkqSYbig6+MWa7gtsx5PW0MIRF8JB06EL7SQiEglJkYfaFvPDAEDrY8/QXNgmyaq
	XOIBW2FhVjv38TO2ABJRqKihDi+gwUJms/o75ZTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650946678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0rHJuq5ECQu3lF5fLqpV1+EAAOPVLRoLkau5LqDWzUI=;
	b=jFS5NVTlFWoVb9itqrUgdRqJw3aUv5pLEh0hvT+1wTYX2FkRYEIrqulmOKNw8vA3
	n28E5x2cSMppesCzE02Wude9HmE5sxuSq0FTX93s9RFPFFhfda7hs5AKZwD9qNl8OAi
	sAEp5B44Zkec9gg8H5To9h/YB5leSooMXYwNdHvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018064171dfe-602992f4-288f-41b3-ad9b-811ac563c4d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec4e6cf44f66680d25284572f83d0e746c4f1589a974fe3592219160a4bcca44
Date: Tue, 26 Apr 2022 04:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650946678
