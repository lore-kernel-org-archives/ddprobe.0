Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89D733D7D
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645098684;
	h=To:Subject:From:Message-Id:Date;
	bh=Gs4NWOnr6x+mxrW6HCELhJVyznmQdSD7lJGNQx+2KG8=;
	b=GJhyEtlcQNASPXHN+A998UUwQmVi1hlDzDARuvuAjOlg8I+/LshFRhEiwBnvEXGy
	oEXJVD8ItF8rRbS6Jk6ZxSmwcsdcIJBclMPIFGlDBsEiESTGrju+kV/6KLrQtaoUSOZ
	S8GHDDJd/zlV8zP5ojd4DRO7WHEcxe93ryTDSSM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645098684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gs4NWOnr6x+mxrW6HCELhJVyznmQdSD7lJGNQx+2KG8=;
	b=gbVoBsNPsLz6y/NbhDY82EQJSjb46oHenOry2um8stu3wGev3QQrmj19c2wYxCUI
	BAbCWGtcr/wiAHwgVkn0i2j3+jySCgGKjCFeM/Ln4xxXWJze7hKW+DrhqyCFqXayjdw
	j61oAZGospf9kEfqhURfOWggPZxKu0IhwrTb2RQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0785d154-f1740230-8f0f-4bda-950e-4ff63bcdc1c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e70d0e087d5814642aaa99466319c766f31925f9d27719221eadbe9f0250e84e
Date: Thu, 17 Feb 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645098684
