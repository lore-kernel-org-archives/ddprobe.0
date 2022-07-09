Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F5B7A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657382812;
	h=To:Subject:From:Message-Id:Date;
	bh=YjI9LUtfYUeg5gVFqcXkXxDAbwpDkKtnT2LPYm03T74=;
	b=BeJJup8ssMx2l6OaVeQh8Dl+WS4pb9azT9VGe9pfe2ZzAx66bTL20EuDMVQteEmH
	9zMeivJtoX/uik1TYENAhhRhae/cKQQwRJXTZQ0qzNEl8+4FAwk7vX3AgYYbIr9ISh8
	Gs40fNJUjFCtltQt21b+02RZPp9QqgHdVN+eJu2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657382812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YjI9LUtfYUeg5gVFqcXkXxDAbwpDkKtnT2LPYm03T74=;
	b=AK58ks5fMEloPRYBsNpqcaLL2b5QKUD7Y0pTUKXhXa8xc+QX52/sRppo2RrkNf2F
	TSD20fUxoVkVHBJS983ClXfV7r3evnjA8T8IyNNZUiQF6aebMctBK4Wdl7xoP+0BG1P
	kMMyowusKHl52ufB7Lvpm1cwEz5U8ivz8x6xuO3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e3b6ba9e-01a6154d-f5a8-4a4b-8231-0eee767cea9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15210f6b6f5ecc9ad688e0d2285c800690c31b25b8e97d336aa4bb350fed02ad
Date: Sat, 9 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657382812
