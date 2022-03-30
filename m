Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297967C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 11:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648640758;
	h=To:Subject:From:Message-Id:Date;
	bh=i5gT67hrkI5uRcb20/d6c4Wcz07IQV61CEFrqe8M+Zo=;
	b=MEfXnVFmZFqksMVn23q+EEG9JL3YhijPxmw9uTSn+Gnzc0lgcXWjtrf2KDjm8vNt
	6FP295yEjPZ+24WvFkq+/ZCuEIknfJYjfH2gQRUSP3SsOBMvskYMojGg79qjB+nQGV6
	WaZFFGgkJQvcavMeQTThmdA2cWPrA5ALeCypIksk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648640758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i5gT67hrkI5uRcb20/d6c4Wcz07IQV61CEFrqe8M+Zo=;
	b=K1WrUE7Fu3PSVgfDo/QpHlDXzm/56Zx5VQX8MAH5Q1IQv6EvkwyIZCa6Vi2rjo6v
	8NQELnWCd4pWjlMZLW0pyOjL5raqGi780ARlTik8EOK9ErccpZhf73mKvA0n8z6IstD
	rxlhfW+xl2/MkAE4+AuRyZc+ooRy7iz3x2V6nsyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdaa591e3-2efb334d-c6b0-4cdb-9ffa-016f273cca3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe826258adb61d3e39272ec8e360b57055ad6b657e8dd8168161ffda34456972
Date: Wed, 30 Mar 2022 11:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648640758
