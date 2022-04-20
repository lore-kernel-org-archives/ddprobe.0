Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EF11841
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 12:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650457318;
	h=To:Subject:From:Message-Id:Date;
	bh=W3IZzN9D2OGNGqmXMGZtsGDACtqtxURx9M2JIVEcwxo=;
	b=GkTfx55WEHZ2IN7QLjlVgxCQwbMfO5VafUUcaatGdabSOeQ3LwalAf3LK2P+1eBD
	Jt+WTRHQ6RzD22oldEGaWiLTlDUkb2Wx/LG6D4K4v0ohDpOUUtWCiWQhY1YXfZ2QAF5
	J9Ar8Z4xB8E83+p2JUoh8tkjncGot05TYxBLb91I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650457318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W3IZzN9D2OGNGqmXMGZtsGDACtqtxURx9M2JIVEcwxo=;
	b=RPNHE/fhU6UMVXKRMcP/A/Vg1gn26ap0b57XmCkEvNC9fXEIfHDXkNzzUZ8MY2dd
	ZDmY+I4wpD5tgSalpbqBrVzLgnOIUk+4Z3I+OrMo2v3k2ldXmuMrythdoWa9cBItLpu
	bmRDYDvuHLy8T1zHwIRVzUuWumpNNJUVk+B/zKxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018046ec13ae-005f0f7d-a86c-469a-b800-fd41116e5954-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f7886734b374b09008228591202e150205491ea215ea54337c89f6fa95f0428
Date: Wed, 20 Apr 2022 12:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650457318
