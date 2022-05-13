Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 874047A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 21:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652475719;
	h=To:Subject:From:Message-Id:Date;
	bh=JGIbzWKhOQhqThXUsUkEUMqpCYk5k6XWhLSURm0opIo=;
	b=Ytih6m10v7wESoHvwt85pdK50Rli5rTXCNECEyDNUFNhhyclxHXXNBuRMewngOUk
	OJ86WxETfUQewQ5uzzzbO/G1S8VjyVgKqGz5whtaE4E3rBBKSvH+TfVNRo2m9LGvpWX
	utvLiy0oW0bcNfmjq9GmGkcBXR/b7wSHXFq76+04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652475719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JGIbzWKhOQhqThXUsUkEUMqpCYk5k6XWhLSURm0opIo=;
	b=AIvgU/+HxPcUDMy2th47pwjClBSFQotec4hDYiDMJ+K+uPj1MrngPyIFCqyCP3ws
	9ZMNbax3K0Ty4aS+dOpW2NOwQpKnYip6dSxG1c5TG3KXQmUObfLWgztrwBZ//mDwWKG
	tUso1WAYv+8Ou/Cvc9a96PXRsNcBPxrr6WTs0V5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bf3a6e9f-372ba510-1e81-449d-b9f9-05d432e3e134-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60d7222223500b1d7c1d8c694dc8fc6e234e64c3413011f8afbe92c66ff7a835
Date: Fri, 13 May 2022 21:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652475719
