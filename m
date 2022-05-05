Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241922568
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 15:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651763818;
	h=To:Subject:From:Message-Id:Date;
	bh=xgjNGSRDXZhc+yztVy8/MsHIA9rYYBhUVOmeelyBQXY=;
	b=PTBPFpGzv2CkRcwQ7xqyN2jULMy4Ma19n4MphkTPawB4Ti1Q0Aklm1pVMPRF7cj5
	2g76nESStvTBgLDMIBJCuX3e+66kq1jxf2ii32nejMc5WnTQSyLQcD6NdEB4/MilWJM
	NjCy0JaFXeX2eVz62hFHvhqM/zy0KPA8hNUT4PBg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651763818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xgjNGSRDXZhc+yztVy8/MsHIA9rYYBhUVOmeelyBQXY=;
	b=LkpCytJ7MOL4FWf5C1mH4nxis5/u5n5yztFDP+MiUU6Wt11D9DYa2XPdDzqbj9zY
	I1GKMCWDE7xN0B64pIxsTC6KNCSWpGKDXlQrmtz5keKY3atQpRhlDI7DiThXjYxIEma
	coinHZ/g3GkmbBHxPFp7atlqofR6DesIMrFNFqls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018094cbaf09-2452e13e-4796-4352-aa12-78a294b7505c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83c11b13736fc04325f3710f557475ae277a4d50115c51abe4384cbedc1a6627
Date: Thu, 5 May 2022 15:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651763818
