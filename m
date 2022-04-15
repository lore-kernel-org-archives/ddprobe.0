Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0941B7E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 12:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650027478;
	h=To:Subject:From:Message-Id:Date;
	bh=pKZEDstLz8dMURo47gfrmayTYhpXIpYZr5CL10kzLaA=;
	b=UmXaCb/pcDpIHCoHRpW+NwPdiYN0PSHMMgbUn15f7oW6J3Xr1MWXmqfIhkzLu1HF
	Ij7mWU9NaSfn/yAjs0cZ2/9JkJh0VgdAMl5ZTj1z/6FsOzrL/gormkzAhoBzqKLCep1
	3p8MiCu7pjoh9f1G3/UxUmGSQdP2mS7/Oz2pHQJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650027478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pKZEDstLz8dMURo47gfrmayTYhpXIpYZr5CL10kzLaA=;
	b=PEepqiOtkGqrkDwuHd1SDx0a+gzXl1zyo6bHmCe48uuHBx3ktH2Ky/vkGiGL0DyS
	MCzUFL3CdGYtmmMaRinnqE2EWzzWvt6EhnTvK4LRG3jwvbgHzGa7iN2NBxmVBl/ii8X
	fL2tu9QKPQoPSOZBFuMtKmjq8ajv3/tX8EM+m+rc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d4d3d24-53ace489-f106-43b2-b510-4c1ce2cb0105-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ff2b1ef7cd59535ac55bbd6a149c3489d808dc62e1d7454f10c7c9b920a186d
Date: Fri, 15 Apr 2022 12:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650027478
