Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191397B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 11:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650973618;
	h=To:Subject:From:Message-Id:Date;
	bh=PFttRLka8rXyzEvNlNxdpFWPcnJNLW+f/O6+u2iySvs=;
	b=YYRhV2eruWGdAh2i0x8yboUya59fKYi4s59YoqoRnnCawIWtkK7TopjBaoBIYzV4
	sC6kM58U3FRP3G99VoujV3qPH2e01wytYQvzhCo5vNGbDtByN+TPrdQREFltlS5GZxC
	Gz+zUSXnTL3+MKl08ClYRnholJe2gp8QFTBoHxrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650973618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PFttRLka8rXyzEvNlNxdpFWPcnJNLW+f/O6+u2iySvs=;
	b=PHQnvOYb+mIK8eT8vJSQGyPhB64WQB3Zel81Tuc8Buc24QenEjJjvgTMi5URdtF/
	8Bddyw7AOxSHPaMc31F/5defGIf9ligUr4cLYOWa1K6AtSHTtm0kwANcqAA1L8g9Ta3
	Nffd3696NrFnwKKSM1Zhgo8f+agzBJwKFnubhnMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018065b23041-1a9a5723-5301-43b4-87ce-303a43e644d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0823caee29b149615506bca288620e6677a70422e9ed3395ab0f2fa9e478fb7b
Date: Tue, 26 Apr 2022 11:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650973618
