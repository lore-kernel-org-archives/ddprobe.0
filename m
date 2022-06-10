Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2016B636
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 11:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654861679;
	h=To:Subject:From:Message-Id:Date;
	bh=ksGWgd+qQjY7pND9juB16eyRP4n4iANpjnEjDMmpMIw=;
	b=JIQfHG9Q8m7OZFYyxl1eA3gD14Q1+SgicKPkSsoS5+eqhbph2a0p/bqLfhgVu7wQ
	zgJHA4HGMQdFsqpM0TkK8GP+h43qE91otzKE4VaGYwprTNEt9y9Q9F/PcH3CSK+kB3+
	5eR5upboviEES+ZvjfJfmrpZUFMtdjNggPHvxqUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654861679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ksGWgd+qQjY7pND9juB16eyRP4n4iANpjnEjDMmpMIw=;
	b=E/zb1y8dxeGf8f2UyBDDM72bDSRU6PAcrEVcKhSdKt3ejI1op9S1wizgExVbpJlk
	CrLtDs5PheUVs5FnSwHuKHZuhSfJ7KRH/eWVFu/LNosC3PHwr+Fk3+SnvgzJ5fhclUS
	0vD66yoKioBAENZ9jcrZlrIPFHxDfDptKBhcy5P4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d714a91-5e2b0f91-e332-474c-bfce-839de960528f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4207d84363b3cc3e3e9e0e99825ed1a5b4979de3cb9e6842fbde816cd41e5c3
Date: Fri, 10 Jun 2022 11:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654861679
