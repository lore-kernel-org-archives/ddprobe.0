Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2D61870
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661364652;
	h=To:Subject:From:Message-Id:Date;
	bh=62wy4hZ8T9Ax5NA/B51Cu4fmbipzLhEqfdLYwRfdGSI=;
	b=DeUzJQuY9eY0MdVtMcccsNdfnWnOAVxOFqZdufgBkZz66+LThSNr9SIBlgv3SbM8
	J6mAisdd3ZYumtbLuM6/YYoO2Te+fSnVyO9zJ6PI7rLeuCZMWgMtxa3SwuQQk6+d3/q
	D/YE3czkWslj12GBjjCAIca5sGdsiuDg8dwxpg2k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661364652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=62wy4hZ8T9Ax5NA/B51Cu4fmbipzLhEqfdLYwRfdGSI=;
	b=jy6CTq4HirZgEYtKBnkoL/M0k1lRRu2A5HSWZZBl/R0etB/qAzlvtDJXYjLxvBto
	jBjhIKm8SkcgMJZ4rTEiiD5fARCN9xRNAeu3/PCApoO1LgpTZEOw6dxfnfeeMiFgEy7
	bgcwgDhxIsD8W+1SKcYs9si0vRT3zmMuCPUyA/is=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d10cca80-5cb10240-63b4-4eb2-8019-04b9615afe17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37972bd4d12c9163bcd687a297a1e18905e8a79975bd9286df19bdcb40328dfc
Date: Wed, 24 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661364652
