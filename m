Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1385F2570
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 17:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649351998;
	h=To:Subject:From:Message-Id:Date;
	bh=96OlalA7ouwjFMUFsEyhPKz+lzx4j0YhgAmwIgwFxQs=;
	b=QeowwZDrrNIwffuD+agoCNqPdVDAxx6q+XStTf0PLUMYo6R2oG7L74kDd2C6o/jw
	FcMnWQdr5A9zTfvee27olqQmdpy9bOTvaKqmS5FpEsgunq4N5sj/IGpm4UvAAeTf5iZ
	ITq/Ledj00oGbOYAX0+/jG/ppfYQ09XH+KGEUYAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649351998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=96OlalA7ouwjFMUFsEyhPKz+lzx4j0YhgAmwIgwFxQs=;
	b=Mbk0LkoS8DFryNXJ5hZ2j2mnkidiSc5FDcjlnwpg4asoMDbtUhQ5fvvIv5qwbXXJ
	sA1WX5IWChu+ap8dXTuzNAv8u4PxDlRy31hklILw3dpH7Xyay4e1cV+HhSNUBK4PkQJ
	d9bbPOH6ZpTUifTpzkhs13QphiFlrYFGBOxVgylA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180050a3b43-58040796-4b75-4b2f-b6f5-8d4748d28773-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e70909ab9c1ad54bf403600927b5a5893555e02c8e48268553487a9dd58aaa3
Date: Thu, 7 Apr 2022 17:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649351998
