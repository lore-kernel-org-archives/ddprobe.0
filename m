Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7601D1844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644974785;
	h=To:Subject:From:Message-Id:Date;
	bh=Yrfc/sVC6jlkZHUUl+B31NcJlDxYR4aDLPrxYEEcFsM=;
	b=gmq1q70/J/yXPyB4cDrfUwsvSK4knuKAFebPTmlFABvkeW0g8Pf4nwLDuSpXlnUU
	kJbKcksx9mDnLUqMYdpb5oCyNtv3fh2OEljy1lbTwLhan+UI3wlIO0cvUVaEYN9Cakr
	kkAs2wFudLUgpVOWcK7QlWqqywUHx+Wcq4cPguY0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644974785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yrfc/sVC6jlkZHUUl+B31NcJlDxYR4aDLPrxYEEcFsM=;
	b=dqTIiPQoVjr/zyikzQWKCb81xeNh9PkX+OM8cUFozwMi50DjI0l9gt6Pg6m2Vl/n
	aIdR0kJA6oEJPPLEl7TGOfN6se6nx19LSYcpAYfWbJ5qfMVZeSUn421Z7zbKCCJ/aPH
	qHchx38VcHzcEKciNcbyR0Xx5Zm8WFhDQNoE8cVc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0023411e-30f7b218-277f-406a-a5ad-507e99357bed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 826fc7aaa750d59e89d1eca2dfee219699635914a32f9b3fdf2839150b58a4fb
Date: Wed, 16 Feb 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644974784
