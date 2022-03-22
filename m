Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F62D7A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647909085;
	h=To:Subject:From:Message-Id:Date;
	bh=HR3ART4uA3quDm7VPcSRMnwoOllMbKAczWnZw07/drA=;
	b=K6zCss+kEV0+CooKNKSM1d8KUqsblRQgfE/dGmOvzpF7HgCI6cFZV3GaQGla2XhC
	AJrMBFc4OQQ5xdGueJXeSDAGObhLTL4iicOET+VbBYjcFMrwEfPFywlpxH65NKIgGNL
	hmDNvhuR+bWhQCs1Ek7ukYkq9XMv7eXV3rM8sFrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647909085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HR3ART4uA3quDm7VPcSRMnwoOllMbKAczWnZw07/drA=;
	b=IZg36v6JeNiIRtcmHgH5YZhHWnA6uQXzgGXnSXUQyyPRVJ4OzljZeZ97imMwD+KN
	AU9OOk+XO0au4rd3+YKn+1kti3oXFO/+10+mNxdbqVCmgcPFvZHX7ylXAiuMOXc2ksV
	sG/8I24h8ny61s7MddcFsNH7hEGfc3JXal6jrdYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf091e66-abbe00e0-9bd4-4383-b1a8-5bf0dc0282ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 580da161cacefe3cb00495953680844ea746a70578fdcb0de7fac6669d53c704
Date: Tue, 22 Mar 2022 00:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647909084
