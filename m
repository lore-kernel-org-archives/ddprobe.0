Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C741844
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644966085;
	h=To:Subject:From:Message-Id:Date;
	bh=zXulta9ZJn9VbrAd/oU9z0byQ0PpYGSn5TDa0uqVnBw=;
	b=b0cWsnvnI6p6txTiSPAap4W3ymR9eyA4OuEB6Qy5KknS/NbDr6IVbx9c50VzkHZ/
	op80zxnQV4E3yNxv+Ng/pMXORZVS5DZUSGjgqnbAMb1rddJyByXrmcT3ZJwCwScF3Ej
	sYP4+gVRK5V+1ILmhK/KSvmV0grR/C7PO2GlBlvw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644966085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zXulta9ZJn9VbrAd/oU9z0byQ0PpYGSn5TDa0uqVnBw=;
	b=ZVNrCYlg/vTG7FGIbqoH3nvzjH5nu/GuX9YTZHT5yLmr5FXl0TpDwKsIeZOGdPfe
	ZVJDM6iyAhNQAikn770R1TtETiOL6w5RG8jx5ldEpO0Y+ZcCv+zoYSMDlZaT9hp3yHq
	1aA068jgkHJTee0tC5sJSKhDZcXWEt/o8lDkpUHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff9e8099-24fd2da6-8a40-4d9a-8083-1d0405571d56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af015d8e0af67e2600dfaca501684cba1f460454e1156833dfec72ba9c1f6b3a
Date: Tue, 15 Feb 2022 23:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644966084
