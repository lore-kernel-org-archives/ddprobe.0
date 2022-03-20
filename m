Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971097A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647736884;
	h=To:Subject:From:Message-Id:Date;
	bh=06eGaAqvmxKyI0n8ZZ2ViPaAd13Bv7RKdgMJA4I8kHw=;
	b=ippD9bWPbc+UaWABmiB+0jDRC8OzU+USR1DQ5W9XXk+YggA2wt7Do8BdDnlrn23l
	gT11SKbuc+MFsgxLhXB8F1RehZcOiZYSkN/aaAj5Yuhz2TLTIKdjCCEVSJ44DxwRfF+
	fVV4OS+6yNCvE4s5FQJprXeWOlQeZS9eVPE/ywkI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647736884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=06eGaAqvmxKyI0n8ZZ2ViPaAd13Bv7RKdgMJA4I8kHw=;
	b=P2M7iuLREAJSPksNSHS1UEeNG3ThBIYItMuReff3Ks7MrgYhvUYxg7QoTtM27Bvl
	Mo0qJctHS84LmTA1QE/VWgKBTLKU7Vt8/0Q36MVX6PFMne4/XZphNW+CxQ0hsdZdyB5
	fvzope6XajA8ev5gNXJ/DxgSjEXRo0nslOgVZvIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa4c58def-17d54f29-1072-454d-b192-f6c30864d3b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fc6ad7b1765dfecb1bcc70c1fc4d362aee055eb5857f040ec8137a488ac7e6c
Date: Sun, 20 Mar 2022 00:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647736884
