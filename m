Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156E915A7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 03:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656128212;
	h=To:Subject:From:Message-Id:Date;
	bh=ULKxJcCzKgAzc4hC8RmOrABQst804FrMQo2m5nNRXVg=;
	b=e5l2tWEHvyqhvAABPD9wJ4kPd3ff6/yiTh2mGEb4fFYTj6x8WxPoUNvQ72rw++1J
	wL4jr8tVgCmnOJHhhQ7IA8xkfXUZLJjjOMwlF0Gaxg6qMoBnrt69d1SVQOlew+5pxhd
	zBCevhHAw/qnN5gQQtQ1Q1GgkLTiPf9IHyal8meg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656128212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ULKxJcCzKgAzc4hC8RmOrABQst804FrMQo2m5nNRXVg=;
	b=aQRbz80Jbjc5LmHRZHZe5PYF1TOXCeTOSCYS6AjkABHMyaqSqKh9Os+ct1dFwpnw
	ZScOsBLeF8bMxLLbjwgkrxmyXHES67JogtzFwBHH5BQHTkHDT9D+7hTmladK9+5dkbZ
	A1tLjb+gDiwyfd55lXG+Zppt17wRsTz8C8u0VA+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018198ef0d41-34bc5e0f-a540-44dd-90ac-6b38b4cc1583-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af113c2f103d43a349ca9436f755965df82ce936b80ee1c4e699334e1bfa63e1
Date: Sat, 25 Jun 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656128212
