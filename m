Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E3A7E
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 06:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650091318;
	h=To:Subject:From:Message-Id:Date;
	bh=vrFxMxnz+kPQiG3ba+GH8s0kZWumkNUrnadPoV6j0zo=;
	b=E52kaBW34946ZTZ8cATW+K6C1UXLJMNYcFGSxibbnzmkrFdHz7njHAxymmAbWbPn
	0PY+oJsfgO3XkDxM0SCdZZYpFZ4+Ed0s9oXZKwRhlFN2DO9LcXRFD7HeKbcYSXELmd1
	VlZxnxn2DmoVsZXJZDxAWWB+wkcc1MdwlYY8ufBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650091318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vrFxMxnz+kPQiG3ba+GH8s0kZWumkNUrnadPoV6j0zo=;
	b=Zeon25sEnI9777I9KX4exVvDT3MfLzejfCikdc/iKw54QEgMJt+yjW5rGtpS3svv
	d/9FK8wDSn7iWCrLjOeiKrok7+FZfsnaAM5m0WNMawGIg5Aq/Zl+8K/wR1thB2r1lUt
	YwTiW2eq8sSb/7myedQ7Vuc8Ykf/81hPWJawFPdU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180311b5c0b-530c082c-c098-42fd-a5f8-6d12ccd9fb87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 258f42efcb9d46a943e4560d1268d6ff225feb02653a89689332d71af4749c45
Date: Sat, 16 Apr 2022 06:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650091318
