Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E2D28F2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 14:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652192099;
	h=To:Subject:From:Message-Id:Date;
	bh=ACGBO7Zt7yuRtx3WgnW7/WHqtOfcheRhKHupMgcl44o=;
	b=OdcZjJ4hBxF5HrBKQo4YPWUVcrW5Nxqpvf6B2IQXo+KVkXgMAlOn7+CpSIRTnaXk
	CD20S7DtFOOCCXkek0IwU0mUOSCLidooD5txnj/A05bKBurQMxufLdRN+l4TUwYmVCY
	pzmCioM14PJF+ftdrXqY+s0kmxxGEezzYbGHJ/Nc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652192099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ACGBO7Zt7yuRtx3WgnW7/WHqtOfcheRhKHupMgcl44o=;
	b=P+zll6QLSeH3dXJ972dnIDSHuByaecOMKkAeOKsjq2MoU9oL7yiRVbn8RwgeajfU
	ygoSVUh+eruxPerxt0nACX4B4BceeB0Z7WsyfYbBduTU4sRGdgygZxJ5EbIRpeipMp/
	aogS9bZy4dEVxmlLOwKmfvKPS5NZhvafH4DdHgys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ae52bbee-c0a8a909-ff97-4da5-ad08-1d4852fa94b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef101273936b9aef474135350d4c54661b77a4c7ba31bf0cd4677d19f30e117e
Date: Tue, 10 May 2022 14:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652192099
