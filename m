Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A411FCD
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 16:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650559438;
	h=To:Subject:From:Message-Id:Date;
	bh=drbUE0+RXdSjSE2O8El7h8t3Q0vd9FGeHg8VdG2rfP0=;
	b=XlPPJBZg5tzsaN4/8OhOqUf5EuiQh4jQArADyWnU3mEfsoZi7l7izRSVWM8gsfMu
	xhMiVbkQktskAQOkhhYOUuRkUpmHkoSMGlS+NOpBxYyLT4RU0wlBoHt4DiiygxEl4WH
	M4cpaB0NYDFWbdoGDgZfG+TaNCRDZ9EOdQ9tNocQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650559438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=drbUE0+RXdSjSE2O8El7h8t3Q0vd9FGeHg8VdG2rfP0=;
	b=QKc4wXfUURd7Pl4m3LrW3SYkDyh/neB7GYZ9hGcQBaYgsh3y9bgNf1RJxF82mIxq
	azk5A8z8mAVmlYSSw45bcPqheXl/OU4gn9RHT52/kiZHR4UN2bLwg2+kLnfrCfcPRJl
	gK72OrgEA5H9af6tS+TK/1OpFXTm/OpAZT9h+xjo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804d024dd2-7cc4e7c2-1bf4-4f11-a5ce-277dd294f4df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24c61c7fced863fb9a0c9101515770a9b106b3193acc56c5137a80ddb49580f6
Date: Thu, 21 Apr 2022 16:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650559438
