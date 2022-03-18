Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2BE97A
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 05:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647581485;
	h=To:Subject:From:Message-Id:Date;
	bh=J+oZjZ0sFSbGCNs/cJ2d7NuGfb5aenWGbW1CHkxwGOQ=;
	b=SMpNqbZEMb3eQ7IsPAfR/4KpejTT46PYDtBUcvTFQw9/RBRHZpNLIUD1BHWNLpl1
	hfqZ0uKSZWq8/eUK9ypRSmga/0i/dZFF8CMmMGvXS9tXghfsiudo8dhP1EmK3ohgBy+
	h4TIdrGNxk4F1L9UHfxHsn6+elK97J3s0eQIPurk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647581485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J+oZjZ0sFSbGCNs/cJ2d7NuGfb5aenWGbW1CHkxwGOQ=;
	b=W9fjWzyeCNU2gM6vhHTAGZPLNzOFPpsxCBFTNaKDk5j78Nzya0c/EhmhQPHka3ED
	nWuGm9lIMJ2yynE0Nl7o3fQFL8Y8H4mQSzabtbcY6irQirSLszgsPoZw19b2SkHinpX
	v613K2zelvzfJzE59bWp0e3z+vgHxZLKqVIRlgKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b8256fc-ea49177d-4f1c-4e5a-9792-5de98d8b806a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9422219f05d3b6b3acee039c0b7121655f864d368dee141e8958a92f5fb1c577
Date: Fri, 18 Mar 2022 05:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647581484
