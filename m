Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7BDC15A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 14:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648390379;
	h=To:Subject:From:Message-Id:Date;
	bh=RSIUprSIyb2YIppVwudf8PdUZytZqfSKKI1sqi/YiLg=;
	b=W/WiOiaYHx9j6r71asK8xBwiSoV9qHmbz4SlG8up64B4pnHMSJs406pSa0UdFjqv
	b2McmerfQ/xXUXS3H2jbM6CI9yiUwHtpNvfwLNJRFeDugnfmeDD2xTf5nYzioitvBpw
	O5nm+l2aXeaLMDSOCAs3QiWjTQI/ueMDBvtU7DPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648390379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RSIUprSIyb2YIppVwudf8PdUZytZqfSKKI1sqi/YiLg=;
	b=EWCrVq69nUsHfKUmYBGoqKiAK7oNQeNrYcGlEA5S/FTIechGokgr8KJd0cDuWBYc
	GC47oI327FELLIPsAbCRIenCoi7D/h5q0KXSPYBIWgLzPtB49NAfDIexoK0wTJNOjjD
	+wohm9nITx7idoibjl8wOZcpTzHK3l0/JwF742EI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcbb9132c-ef648f03-4549-49c3-8cef-1021d59e9d49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f4b064edcc958524636516ed72a2c5d9c572f42c75e80c0dc4dee29494575a0
Date: Sun, 27 Mar 2022 14:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648390378
