Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087E315A5
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 02:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658458612;
	h=To:Subject:From:Message-Id:Date;
	bh=r7OeIkMFLoEc/LGlBc/IIqWc6PlPk6jY4GeFKRml8SM=;
	b=H2JZcQbQIQXP72plcTv4rOP1AFyYje7uAbfsyLW20sFFXvkHsI6TgT1gTeNsAqlw
	dCtzkLqdVL8yuax5EtquvpK9DvxYAo8f+NfL+sXWv9uXFbV0IXjpaKU/j4uwJzXDwWo
	e/B3vCx9mdwQJUatpIShZ1pug0Umr/7PTLkrpn5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658458612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r7OeIkMFLoEc/LGlBc/IIqWc6PlPk6jY4GeFKRml8SM=;
	b=O7pbrALlPTd1C5h3q19MYly1PhhNSx6yUUmIPB7/I4S+y+kw0qOXF4IBJQl5UTQd
	BIXfhiRKOv+mV94M69Vb9K2xieUtRHZeaAchcjFI02j/X/cElD9Y3fe5Oziclca3JjU
	XynDkJF4Nt21PJhAOdVEUSVwYiRGe/2ENJif0nrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018223d62212-32ae2254-e237-4e30-85e5-feb0de2bab62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 720f28b8e6622b4f8277b4c46d0dbe6790fb4499ed2203e83356f738a87441c7
Date: Fri, 22 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658458612
