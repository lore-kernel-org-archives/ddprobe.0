Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5D87A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 02:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647053184;
	h=To:Subject:From:Message-Id:Date;
	bh=3cHOednWCnXbcK2uobi+px5LtkqrCT+jBsqS0vQUq1k=;
	b=Cy1o2Q8Z3GgOoNmwOdm0d1EaAdG4iXsE1+a79jU5arVFmsVVQ5+otugKMtyql1xN
	Bb2vO/FNXplM6P0AvtDcbj2XVK+lAeWnuLMifUnDAg3batzv1Hdu2CPd4DqUj/s3516
	JBd8EuheR3I/xIpDV3LTPKk57v6j+L/kkjXMCrO8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647053184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3cHOednWCnXbcK2uobi+px5LtkqrCT+jBsqS0vQUq1k=;
	b=ezwGX72++dc29xaVE5A6xYv400GulIWwgBOUxnDdFBihrq0wuv+7oMQ3jM+yks6j
	fi5Hw4+3fCpJ/0gx4RZnc8q1cQQkiMWcrwXkkXVOrLoSjM6xYl6P2to7XXs18DaZ0cn
	2rbGKdYHMfUppaV9AqL15Y1HY3MHbRTnZsrhssFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c051ee5-16849a35-9c4c-428a-b759-dd835aa1dc28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc9b71621bb383ecf48ea370683021f6e9d43fdb7bfdde4f1718fc268f305108
Date: Sat, 12 Mar 2022 02:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647053184
