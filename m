Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF82515AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647566784;
	h=To:Subject:From:Message-Id:Date;
	bh=kJmkVcdYalXG/cZYfU/SHpcu1Ok6b9K2+QYxGNFTDwA=;
	b=hYARtGCdR9Ji/uStMGD1P11gHtv47mybnq/IH9Bs/uyisjihr/xfuZM7Tq4UILtt
	vpt2h5BSH9TDK3kv7sOZ4Z4t37RSiGNNZtSd9qT8n8YzDIGEmqx9wIO5sOKnTfL2qBo
	z2LxWuNhXlajbIfEJiUy8HB4HkZWhFw/BH2W+uX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647566784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kJmkVcdYalXG/cZYfU/SHpcu1Ok6b9K2+QYxGNFTDwA=;
	b=I9q6Rfy7pAeq28A266hBV6Td2EC7xipP3/31I2hUJta9sLO3HKHFLmgYtUhR3jkV
	4Tjasd8QfE9aGzf+q76oxkx/vqY/4JT3Gr+uRUTaMiOErcDYNs/6jfcA1ecZUWO9lif
	ElUfnEbzocLOmZl2zm17WEgwOVIou1xztS7uINAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9aa208f9-117110de-ca5f-489e-9e8c-5c06720ebcbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1b62caa7bcece178266c032d3d9a47c91582ff296d7c8eb24487f6415dac599
Date: Fri, 18 Mar 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647566784
