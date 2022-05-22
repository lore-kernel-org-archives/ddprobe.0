Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B50210C
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 10:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653215159;
	h=To:Subject:From:Message-Id:Date;
	bh=Yvaw4DeDM0U4WRf36T43RnQCHNw1YO9nWoayygKkH90=;
	b=IxXInPXEk/2syTALR6LdTg+xuheBBhEmAnSmFCSRRXwbfDsux0C9bqAohT8wsxuu
	z+vlrcwoHVHfmWuL60T2H49sgmUHEspu90Umgj+Nq6Tkc9sY0QQnHyt1Dz9gn0YAlZZ
	B+ubp/TzCt534dK26cg6Jo+cU8ZdoY7fklc0gEn0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653215159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yvaw4DeDM0U4WRf36T43RnQCHNw1YO9nWoayygKkH90=;
	b=Qh/YhNyA2l/r/wHPyyH2KdfoH1R/iFlTSQTjsOMjzfa66xQ49l51hwbfMkHir3GM
	xXUo0R+Sg/iF7AE2pUVH2CuDXejhSfOc2dJIFMrEoaMogGHhK6GBwhVBPIYbyFZJ2Z+
	R/Y0YG93gHV9I5bM1bRP3MSDQzKMSsc3wKYRKcFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eb4d63c5-3e6fb54c-f5f6-4780-9679-9c787b15692c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01ae1b5816d7bbd0e52630ce51032b8583dee49df3c64e48a15cefd5cc082398
Date: Sun, 22 May 2022 10:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653215159
