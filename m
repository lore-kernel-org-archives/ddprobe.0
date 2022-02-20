Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574167B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645367784;
	h=To:Subject:From:Message-Id:Date;
	bh=jTm3IsYNgaBYIaJs9XXrFEhlN+0sgV+sDCflbkQwEkE=;
	b=QX1ayOLOJSArmCeKE2cKm5kofer+Mi+xRIUVUCDgWWq3GCSd7fQ8iEu0Scn6AiOz
	+l9gmJn2w4jhbagDlZE3RmGm1BuvWpP6cazP5IscrcN2iIgtRbcpvRdcHsabOnHuvx7
	yNY7m5c0lteNXF6BfNbjci2KtPcfccpCT+8PE/J4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645367784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jTm3IsYNgaBYIaJs9XXrFEhlN+0sgV+sDCflbkQwEkE=;
	b=fSq4rjTuKx1KvhJNBsvMCjBrhk5/kMF2JSAO45XmIWV6LChQzKhCLkYQ6JXQ4L0w
	0m/c/OaNzH+5Ujicfqn2cYuWhgeOELA1zIVnKpGzY3ppt4V/Dv7WLh65y4crlUmqe4b
	lsAfLVOulN1/WGpcBr1+UFXH1u0QY/hFfLUV5KPI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f178ff53c-470aa606-5537-4caf-ba48-d681c43c9f09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99831698b4487732ead6631f0257e822564911d7c346fa6acf882f1ceb7eec71
Date: Sun, 20 Feb 2022 14:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645367784
