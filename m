Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09FC184A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655192339;
	h=To:Subject:From:Message-Id:Date;
	bh=dyCC43MRtpqq+PlAxalqad/FEV3y2Uj6Ja87JrzcIB4=;
	b=BKdqmEikAMsRT4RUQWGom2qq+bc+8lItcnteDJgTF/5w9AJHJLj5bcOTz5XICJVU
	+NkdZ/Rzp8p4RFBea7IBbWlfgAQws9dbqJ5/bzx5Tisqlp2mLRC4WLPfCnHaDs53DCF
	u5UBoBeUIgEZl+4PfEAl6BXWIXtlVuhixmVmhN5Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655192339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dyCC43MRtpqq+PlAxalqad/FEV3y2Uj6Ja87JrzcIB4=;
	b=P3PVVZWQR5sFtVQ4lqRPo1oMi2E7kr5msUoCUO85xdlVTBSWct74PfLveykVkaFn
	k59wIUvpF8N7VQqm2pbshdLIXCxOHrmzsBi0ne4Q5CgiP5I/mbZb7Wo90NqJdGTfDWE
	6aNiQgTmDhxoihZLAyDLY4IGC8w11UX0Jr34QnBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816126c32a-b6ddc980-a4c2-4467-b41f-4c6908b02b4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ad10c2fa895049f712ba9d9568cf0cdd1d6d3863147c7ce1f21bfa5e8cb4a5c
Date: Tue, 14 Jun 2022 07:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655192339
