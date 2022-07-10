Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0907B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 04:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657428412;
	h=To:Subject:From:Message-Id:Date;
	bh=u8XIGoSw+XI+xH3oovR2HdG5sFg7eHyTitRwXODcyG8=;
	b=iWugl0sKZfbJ0TjDRJZRha7skmaVajGh8bXohbqXFnJ1WsfvmbGQ3O332iT9dUk5
	vbEbwwuBJmimjVcDLZ1h0KrP4fBFrilvDllmZDXDpe5zc/0HBZTIdqOHHbMjD/fz/GY
	ix95ZKddvdrr/Sbfx6jMbSMFPv6mpPEihuXEvWnE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657428412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u8XIGoSw+XI+xH3oovR2HdG5sFg7eHyTitRwXODcyG8=;
	b=ChYfLGTDwZ+2rBF4OJxjQ18Wzto1aC9gEL02/Qq7Q2ouvkahNtYaj8FZ7hFNBeIp
	RalPlQ5Iz3mEqEMaywbPGivHCj6QVu5hPnSiz8qqrG2XVBKpavbOYo9otc7P9asDMJ+
	BH54oacyeEpYuVfv4MkASSFodIGPQwgUhSRW9Prc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e66e87ad-a2c89518-c153-4f64-9196-7dfdef370cba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b24a4cd606a09cd09bf9a79e001fb0eeff85445e1dca2d56254784a1b80a9a5
Date: Sun, 10 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657428412
