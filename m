Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC86723CA
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 14:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648217218;
	h=To:Subject:From:Message-Id:Date;
	bh=cB8ILLwtEodr5nBhhG+qxsmxwmfk2jKHTsK3+/RFR1g=;
	b=PAJ/Nbg+wUuRJHLe1QkgGvtWBYkJ/KAsy4A9xiKniH9ExjdRJ4OBMsGVq4hidEKh
	SoiM9Y4/aqfo59keDtfXZe8FeA0u93uhBKTGjj2fdLmefERu5rHL6VWHvqYaazC171j
	vgW+io2T3hY1dXyIK7IRSW/asQwbBHR4LZtIlRNE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648217218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cB8ILLwtEodr5nBhhG+qxsmxwmfk2jKHTsK3+/RFR1g=;
	b=Vktw4bCRa8QQ7D5lA3vSJ0rDMc0p96nHnlw2zGG/nyN6GHb5lWnZMGIRg9gzx2BT
	gBO32HX7fFpTqaCTOxWzvLBPrv0i0CB78oXyunLHYJglrG+FKNNzXjTBPUJWTS2pAre
	Sy7PiawoPDo6GxsOGqbg1b7ZQhlABz9FsfBlSZVg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc166dcd5-13f9e909-8f3d-4455-8de3-2b3dcaea4d98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2865c7bd8d117ccf3af7ac2b08b461043d7553428b78117609bfd5ffdfde94c1
Date: Fri, 25 Mar 2022 14:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648217218
