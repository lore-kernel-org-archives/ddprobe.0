Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37B7290F
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 18:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650651238;
	h=To:Subject:From:Message-Id:Date;
	bh=zsPgTKwFzl4lpA8kYPGYWviRUtPB0X+jXR2DKiXkZxA=;
	b=a5R1hlK7Yb9Hr/swzfY/GxPNjUOnzh9+4N4TTjB+6vNsDeRlhf4p9ARMqMlJQBnz
	lxHTu3xGtJK/YnnvF3MCDG7xm/eGDTCCJpesa+8Cy9boEaKeQyL2Nsmz36btO0B4O9R
	Op0OzJEQH0Nz+Hchnm++Ggrn4uCfgcyrR1oF2svA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650651238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zsPgTKwFzl4lpA8kYPGYWviRUtPB0X+jXR2DKiXkZxA=;
	b=EKU5GsfhaxCmfgliE44ZBrmM6h+X7ND0ELA2e4l+E+G+IFIfJtBCozVSXCvPamMC
	iME4p7hhQ5sVnsgulfTHoGgvyYHKQ4A6Bl+7QMbGLXsQZ2ARYjAoDiGB/8NEwbaaHwV
	VuLd60JKG41v9nQpFOuM4yAAhQtsY9M3lwAj6DAc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180527b0f67-616cf166-2297-47a7-95b0-2b90b8fd5d2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0433b73b458760568cf234eb1611c4c92037a6040881fbf091ba6fdae525893e
Date: Fri, 22 Apr 2022 18:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650651238
