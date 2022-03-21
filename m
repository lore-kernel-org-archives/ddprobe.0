Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AD92F24
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647855384;
	h=To:Subject:From:Message-Id:Date;
	bh=kdWpejujudz1egWHFGiYBm8HHqe3f2QuPXeL13+Yv80=;
	b=G711KXB/NrFYLTZznHdSHlB2uXkwbrnsN8wY5K/9bZc0/IDecSZv67+xr7hhWTH3
	1nsd9CK0NFdedXSbsGD/lGPNCiKfsUmD6lvrGVmMuj4V73p6i2RjVKy4wD9ja+joRx5
	MAQI5W05TvVa4+Ha02GfHaXzAahqdNK22paZb/+s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647855384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kdWpejujudz1egWHFGiYBm8HHqe3f2QuPXeL13+Yv80=;
	b=FJH0G//zDFXNBHC9xEV5datGxBX1+jM/3L3fOH86cSZ0z87gRloOkGjI3uOwnWza
	nChQKybbI+lXZ12HGYl9vV69xRIf7ZnHN45nXj9aiGv0/j64csBs0Fr+PfmL4+sksZd
	6N8O0M5E1ZyDsFhicCLhH2umYd+D/CkO1MJCEcJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fabd5b8e4-8d9d6e37-9df2-4304-8a1d-759caa6f50c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b405eab3f1f595a7a9e4d972552fe1de655c7c84dd63cd81f7ef01f619cc7d7e
Date: Mon, 21 Mar 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647855384
