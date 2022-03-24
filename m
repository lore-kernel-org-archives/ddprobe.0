Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6792823A7
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 19:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648148638;
	h=To:Subject:From:Message-Id:Date;
	bh=1w1zxbt4Ce2rsiDc4PkOw9+KHZyum/UpE5A89WZlHSY=;
	b=XmuGsbmcvtJ5JKUApMPvLT6P9lEZ9eJqOetJXM9GRdzK69VZHTV1XFCuzMTtDB/i
	9TPgL+Ifx2V6fJxkdoHc5Cg87/3UJcam2VLjKKgd+gPqZ9JUTUPp7wvjLd1db1ICVYY
	Ek3zwMMu4Ftfr5Go7XYZVHVZhFEUQb1FBXganNmE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648148638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1w1zxbt4Ce2rsiDc4PkOw9+KHZyum/UpE5A89WZlHSY=;
	b=B+74/9gCE7GXdt76jIPy56LN5uu6BFCIhp61ledcANroZNZcQXWsmDCsO2FDiDDd
	Owg5bXONooXF+Yj0kk220WBI4s6zWPJxs1S99PGK8IAeqZEEpx7GcGjAM/OQ50ueluD
	QMOgPt5lsQwfnrmXtu6VTLWfaLR6XkSXvk7axz9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbd506a92-b3d3e418-8f0d-4d95-8605-8ca0a0638551-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eac731f612d0aea83bc710c2e714d79dbbd79103c87b0ce1a9d62fca5b37a52a
Date: Thu, 24 Mar 2022 19:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648148638
