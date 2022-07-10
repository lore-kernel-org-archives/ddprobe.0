Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38501C17
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 18:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657477012;
	h=To:Subject:From:Message-Id:Date;
	bh=QgkFRoDQOUqRj6nOMgM29jCPMTBjTVMwZDnt/2J/gdw=;
	b=VmWmhaDg/JPJxsoE8lRFDzvntTFjyyHO82YQjOr1QwAAUo/3SAfFM0c4FvIFLBPh
	T8LQHMmX9KU6cktVeJA+d97BjDbZ69lFwItEp3ggRTm5ysHG9chOvIY1vQjBZzmW/+f
	Qdpqc7J10tB6TY/VkYBJCMhQ9PflebMJBysb9tQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657477012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QgkFRoDQOUqRj6nOMgM29jCPMTBjTVMwZDnt/2J/gdw=;
	b=guhvA9JvpBL4zrqXeLk3HFHdboJCoBTglpdv+58mkTvoD0nC24xn9p+4xiVQOFf0
	8rVlJng/LxbDeP1Y18RnYZKe42upKrYKrjwLgQziavVRALD/PA6j1lWLlc+xfnvNroI
	z7yYIGX7Nvytx7ed68dxlgHTfQ2GAw9j+5pC1AMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e9541b37-13bb63c3-6ac9-4fe0-bbc7-3a591e676153-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 781d9e0f5ed750c861b6be8ca571c2cb2b1ae736c497fa38b1ef1e9048d595ea
Date: Sun, 10 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657477012
