Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EFE2563
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 20:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649363758;
	h=To:Subject:From:Message-Id:Date;
	bh=r7O4IYYhREXPgHspa0NORbzpWIfVhkp45TAQ7WJRQnA=;
	b=QxsVHll6+Ta++7X0Y8kjqRq8Oee0nE1AJQx5Fnb9PZ4LThyME5pbdNvmC2NwU5Ip
	Yhd78LJlhz8QNUgd1KjkEQxojw2UmOKIcpkF73Tzx/aWZEucm+f8zLDWWjcpeLGLB2s
	trr/cE5A1G3co/9BAHbsLDkpHVcoF3LhDSimHRxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649363758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r7O4IYYhREXPgHspa0NORbzpWIfVhkp45TAQ7WJRQnA=;
	b=CQTRPmzlT2edQ5E0u+OmGawfdeZjvzg88tIDnt3hVT71t/tppUwfVlyrEcDrM3LI
	HssCTYu2jjvX4WLf9/DtT77OeCazfFbmIfVvJBU42Ey64LUSbREOvDz1eCaD7p5znSP
	5iqb8zqqikrhJl89Qh8tLjTvt6ZsE+/Yg/JMYlwc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018005bdacda-246bbf9e-dfce-4d4f-bf3c-e3931e50f5e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 844236c234fa5f32bbf007c77ea8fe94a6da8d416bfc78454261ffc7400dc205
Date: Thu, 7 Apr 2022 20:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649363758
