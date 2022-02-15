Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1608981D
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 12:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644928285;
	h=To:Subject:From:Message-Id:Date;
	bh=eaJiB6bFkrSh23g8wrYmnAE5YAswqEbjRryLh0LVV1w=;
	b=YDO3rRwcr22sG01c4bylrfWCDlE8ImxNEuetNJeuPUBJ4vpvwCDwEcQ2E0cLQQs7
	1TRSmm2QZTTdn2Lgf+LIcxnhIK7hMZRcdcZgiaJucelNW3MP6UTc2ML4mtVVxqgSJB2
	zxwasyMp9tzConizRtGLqYtCe19Yxs/uNi0rl8rI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644928285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eaJiB6bFkrSh23g8wrYmnAE5YAswqEbjRryLh0LVV1w=;
	b=EYm5HbNjtle38ZEfCqAG3A4Bmz6u/6LTZEt3iTIyMv4zKA9tDQdQKaYun5GlZ15R
	rehye/Dw3nHhpWTU4lo3TfIzbSVofBO1wGvuG8soTpHVpnjq7qKTtMUkrhaVOGWRkiF
	b2lgViVscj+TX/vsYz+qWP0vZr9dt9a8M3fNMYT8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd5db8fb-6c2bb847-8eac-4209-b76e-7265b53475b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b91c201474601957ddad1712cca4201680889970f137c5f67a6e7a5a8acfba91
Date: Tue, 15 Feb 2022 12:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644928284
