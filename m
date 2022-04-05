Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275DF15A7
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 02:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649127298;
	h=To:Subject:From:Message-Id:Date;
	bh=57L2jWKc8hmzkeetGPJR8bdfMIqzLrcWrOk6PvJ3XLU=;
	b=SrIZF1+SmJtQ5YHhmvHcMpEgZNXLUvyuV5V/IDSGziOXXvNALB40NsdcUmtySaae
	nyVPYar4/OX9b0tFqL6wmIp9SZcruu9KINU4xNt64j9Io4KZBWh7x8jGlm5jUMHS33k
	mnCf+sU1jEENJCe8hGCE/7NjQGh33z++l+TOABDo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649127298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=57L2jWKc8hmzkeetGPJR8bdfMIqzLrcWrOk6PvJ3XLU=;
	b=BS/nmUIYywMNcKs75/RGpAcrvhzVXayE5FYCtW3G1xRy/kCPwKEvvyECnidiFaJE
	+Ty49Xv0PJcZQ2VfqT3Fc9PHCNcxWgqxZd4VUqDUKkuRt1a9GmCT1GBfmtDo8Vuu4Mt
	Cp88/CFoibymBjoypyewqxhP2O/FxjbbWqgXIpd4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff7a594f3-c91f1e06-ac09-458d-92da-288adb945680-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e29beaaa1a56ef5b2b693da98f393c54a7eb2561f99df07e06736a7dc451205
Date: Tue, 5 Apr 2022 02:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649127298
