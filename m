Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16C47F5
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 08:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652605079;
	h=To:Subject:From:Message-Id:Date;
	bh=ptGsYyh7F3OtqEobhhHklgwxafbphpJGysZB5+5AY48=;
	b=fb19EnhC0h8Ytj8QX+2kJwyKi7xKD0lEfefPyc9x8atFniPUN1JHKMMeWmaISVKL
	Bc/LJr7ByG2fi/WkcNZjqZ0bO5Ei1ambmq19rNehcWQ+Y7EbfCmylT6LUr9DQoxmeDs
	7lu6MZ3/1NxJpI68tm0YE6eGWVCKBhlib2qlYZF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652605079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ptGsYyh7F3OtqEobhhHklgwxafbphpJGysZB5+5AY48=;
	b=VF087SXSohIrSosa9w7LYKQHHFgqjJ0fA8lBKjytKGUpiq4hu6ln4gg3ZpdUU2uX
	MQT+5dNlHDCn3GAjPx/HbPjQXqyu2fQ+8usikTJ9CoIbVp1jgVt2mD0Z+DrmAqG0nYb
	GzkBTXcZ3QjfsVgdekCESh2hmvA4tjfEiWX12hG4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c6f04efa-e1fb24d5-0efb-4e26-81e9-bbc0c96c0bf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5683fec4493cbf4da7121c0e76bbd9639da03c096e1958756dd9a95daad5bcd1
Date: Sun, 15 May 2022 08:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652605079
