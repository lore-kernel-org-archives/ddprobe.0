Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1554663E
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 14:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649427418;
	h=To:Subject:From:Message-Id:Date;
	bh=7ue1ORqqzQA7r4dBXaW9XouK2QaGfExi/Jp5r76Xlo8=;
	b=XC3cLfF8ydlNyTI+hbtQZIpgFsr8yfpe7GrMCDVFk2TJicMOmqfH1bc9+ZXxFH32
	qRwKWzgtOcHm7hylF3ZFVLaqgbXLO1r12O4XIpz1iryRilPQTu3ZqJ/EKbNkqFlTcBU
	h/aQY1+qrgrw3vuaP3KXFVunluJtWqSGEMd30Dyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649427418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7ue1ORqqzQA7r4dBXaW9XouK2QaGfExi/Jp5r76Xlo8=;
	b=gjKbDxsKFBHBAXaR9x4r89O0F5yrPPY34ej/exSizG9ZvHN9j6Icmkkxny8fe7EI
	GPDjrTzehahresjZNCjZ51sqstzYaAWNEA7rX5UQ9ATTCkbmEAqvgGBqyMlnlUU5YnK
	uavxHkgshCeGih4KQn0VxNTmsSPzLkaWyE5eysI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018009890cca-638680c6-df46-4235-b151-7a59ef5f3361-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3890dd1b4a715a4d4604bf8678375d181e80e75d0a9d3283c2053e3e5df4b1c0
Date: Fri, 8 Apr 2022 14:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649427418
