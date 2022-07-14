Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC067E
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657834012;
	h=To:Subject:From:Message-Id:Date;
	bh=W7PWAw1Ys8jkqRe+MA5AT0q44W/i/2CUPpS3zRF906o=;
	b=H9JMmc+6Ax9lgjki4JFzeXQrxAQwF3g4MIFkCqdMmk2BzQi11dwugPSVwNizQ2z9
	h7nWfyeo5RG0My/+BbTdSE/6QTjKCbdqfSpLIwf+KuCZjjqp4mXiGd3JpseBFNvVbrf
	zEJXsD3m54VJj8OVmJsqdQvPuXMgEgcUuUgnU5xs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657834012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W7PWAw1Ys8jkqRe+MA5AT0q44W/i/2CUPpS3zRF906o=;
	b=J9v6ni1Kp0DrJ7m0ZEcXBwBzJ/rEbvULPh/f/OawlTynLhfUDOoh/830UHR7hPey
	ovpo0XCN9ymO+5q3As2bwRTC0j1t9mgmlu+JZIb3L5SawK0XsqgPh44Rc25rY4ow3Z7
	T8y4Tl6lQCjbNmxbOffqaqRpzKNfMimYrkS9wv50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fe9b7ead-5e5ad5e9-fac8-4010-9e27-9979022f6388-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcf084a6cc4b2ef6efc8a3e287d3ec28ab9a4273c80781f7ac508e02ca0f393a
Date: Thu, 14 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657834012
