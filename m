Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A110748B7
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647600084;
	h=To:Subject:From:Message-Id:Date;
	bh=1JAV0Cm9KaZQcrcncoSP6deYBzCfXDnVFavg7r5KDbI=;
	b=Kg8sodbG83NZXpiqgO7Lm+fRHG+upGiXZxbnhjNJpVSg8m/SAj/GU0C5/E05JFBX
	zWz3bc+w7trkk2nAZ/vR2DcIVK6gmRkS0aI0jH3n9UXH7/2AGHZqXdLtrAneRYW85wL
	Vw2nrqsYXfNzfts5zKOs+GGeuDSTOjdVbM5RrIgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647600084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1JAV0Cm9KaZQcrcncoSP6deYBzCfXDnVFavg7r5KDbI=;
	b=OSpEMMBwY1vXwaWPOdx8lT9pjEfbLYth6xql+BrXjKAAqSH1XFfNrNxM4Kx5qDzY
	qxKvCRjZ3ASSn7ahFXxgbn+OZi79udUkUduVJAHo1DTBEnS24PHrfLRGLVJ1Oe6cDCw
	Ufmr8ClTFfLOjmeh+vqO5h1Ox+eJiWpAxKSv7rTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c9e2713-8abbe515-8c26-4d8a-9b64-951c66abf15a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2c4f44a9f18729157d8b755383674b59438dcce18d053152b0b37a3880d4c53
Date: Fri, 18 Mar 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647600084
