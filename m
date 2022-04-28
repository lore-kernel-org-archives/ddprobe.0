Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FDDA31
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 03:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651115758;
	h=To:Subject:From:Message-Id:Date;
	bh=LkuDffTsK8qFZYa4N4i2ucDHkBoQ6Dyhka3iV4Eu7yY=;
	b=iDrSUibGELPWXxZSqL1hZIMAtrnyagUAFPZ7g9H/6GHfAwsFH242d5W433il6kl8
	T9c8H/reUtG1mHygSDQ8xlFN/3pnoqse0RCw3c26VS0LxNN1vwqi1y8Mjpqlb5xdiSR
	LiVus+i+1DqY3ejnLRiJKNIi2uN4xAqnE+Ka4lCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651115758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LkuDffTsK8qFZYa4N4i2ucDHkBoQ6Dyhka3iV4Eu7yY=;
	b=gmWoxD1GgdMW0pA+ZL6DaYaKEXd4eAe5HFizNT1vm5D4DATUVWs4vnTimZQndzNV
	oCjKP2VPDZfC5her1xjQMjNPPmWiPUlGHAKU7lkWWMmOktr8UCdAqd3zqAMzoQUfR1d
	fGyU8PdS49QM8r1y7RJKbBBWI8se8F7Kqg0Wrn2Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806e2b12c0-f122d313-8197-4a9a-8167-e13e80ff74f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e727358fcecf78a34540d7d10a76f62661912558fb66598c6f41ae4745bc5142
Date: Thu, 28 Apr 2022 03:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651115758
