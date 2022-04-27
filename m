Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C9F7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 14:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651071298;
	h=To:Subject:From:Message-Id:Date;
	bh=d12bxeslikR+zt51IOtTBgbE3xLvVaP/XAPjCgcNe+k=;
	b=PpkNMWZ/pFIeub5+0dWOu+0FboXjAt30q9gpfBDwmiREXOxYCxgxfiMJpYrw5k/7
	YctLjK6xzYpnFXMosRxlu5E7yYlpA7pEafd5FiwZbSuvcs+RjrHJQ2DCVmFM9jmbrar
	O00knbWMuk5LKYNVH469eRGQnoHAUO6gmEGD94yE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651071298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d12bxeslikR+zt51IOtTBgbE3xLvVaP/XAPjCgcNe+k=;
	b=PqKm16/uoMcbp+AQCDkIZNzUpwBMhzqFhfVwO2oYHQlQijBLRTEriRC5CtEI1Dxv
	7JuW8OTaRxk3lMkKIAhqRK3y3F7WDECd+AoVURyjliI5yqoQAki933bb990bh9kb9FN
	jvkpgBsXo083tu71LxfhGQYwdYZrfClHsO6R0xWw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b84aaa5-45a3d012-8c87-43fc-ba00-2f90150c5539-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2cd7ca8d3841468c669c63f70469a6f9f6a589a6fd60c62a1da247cb25823e7
Date: Wed, 27 Apr 2022 14:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651071298
