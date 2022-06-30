Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE20813
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 04:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656563812;
	h=To:Subject:From:Message-Id:Date;
	bh=j2LHd2sWMGEs9OH5gClt/4AJK+Z43Wd5SaR8Twy5bJk=;
	b=CCnhxv4kWjSFFeKrbJyHw5D3w6vsypKQdKoVFD2AzMrtF2s8JDd30jhV9jwQz3r5
	+djsUYjvY5UJFgBQzp6foWhegOCUr0MvaVMkTnvWtP6I2+zaFUk0kC87mBF8nXOsygP
	vHKbicP8j8XglFtmpj0hocEDV39tin2S//CKqcfU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656563812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j2LHd2sWMGEs9OH5gClt/4AJK+Z43Wd5SaR8Twy5bJk=;
	b=aAoNoG6oQdAnRtXyV7iy7h/b3dOLKwWEnhKLwkbKBzrgE2CMtrRxa/lKtX0A6zbe
	BBneEF9TGhE80QJiSwTBj3ES2QSzrpD9AK96peVFM9s8/TG0n6Qen/t7uWut8CqiZEo
	6bNYEykulMNEEqieLd/M/jzmNZdUgV2dQHkbpLRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b2e5c806-09dd6e94-8870-4ec1-93c2-48ef473ba902-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2c31b26d5c44d02c11dea444df1e7074bfbf036818428b53abb33d757838cbd
Date: Thu, 30 Jun 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656563812
