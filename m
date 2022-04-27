Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F21A621
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 07:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651043278;
	h=To:Subject:From:Message-Id:Date;
	bh=7QuFEsR6XP3DxgQb+Um5nr5KpXrd7oi+FTnHPlH1EaU=;
	b=WFHeCNPn5fpwCHdr4VYzSirgE4TH3eOT+YBL+jIkxlZlPqpQ3OBu5NyKMkYNVNbx
	nDZLuNcK6dmkY2CdcwjS44UCXkHZOwzJNpKvB8xn4yaOQrXGSVupYAEctm1AUQfXuSI
	0+em9fyiwx+ZU2nQOchLp4vcSsLzi+gKowq4wqtY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651043278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7QuFEsR6XP3DxgQb+Um5nr5KpXrd7oi+FTnHPlH1EaU=;
	b=QxJJIj+8fxLjM3aWG2ht+GLP1aXC96dN7Am4zmCREqcG4g1qYK7oi1mJmRswcMHg
	dvxHu8rCqs7WeZ1yb0/jTfffKL9LfzB266f0A6I78H8vTOcnwz5vn0FhamOtyde4YNK
	59EIkX2zakjYAf/Mfau/1fWcxE+3Y5JlVFB9BxQ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018069d91dfc-45f4ffd2-5136-402e-999b-4ac91cc06bbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8f289d471834302dcf484ffa782fd7da37918096c69d8b9d13e75347d8c5fde
Date: Wed, 27 Apr 2022 07:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651043278
