Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720E628E2
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645299085;
	h=To:Subject:From:Message-Id:Date;
	bh=QqtLoMgkWappYJJEuOuYE+0v+ATkiBRNb2pOXOdckOU=;
	b=IFk1FUUZG5xu9Ecov6vR2scUbRgjBpHOpehGkBFS0dYAJUpivkCZiHwlCzp0aUZ6
	dgALWbxUHUfanVjKPzXu2x95YXqSUJ2PwdGui/RHC8QytEI1AFj9hvkFMaQ0tHWLh4/
	b4+0D8tFiqtomYVZaCfNvXyDoApTfcMnAIx1DbVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645299085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QqtLoMgkWappYJJEuOuYE+0v+ATkiBRNb2pOXOdckOU=;
	b=LWGFz/Sraj34HuCf9vlFo2idPOUPYor0IkwSJ2FSXO1rMtl/QrhzeO0glJUyiG+8
	Dhbp7gaoMblQz1KtnHE3qbK+88OtIW/x8OjZ+1p/5f0ACCw4jiHCUhS3eHl3tVeQkCK
	by5tsEbG2feLXmjCV7mxTsi5C2eVgUXDAbDk1h0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1377ae0f-2fa93ae7-cb4a-41d1-9237-8d04ff72d593-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1c2fb82337fc96fac111dc1db60084bb442c88803907c3d1adf8271d544d68b
Date: Sat, 19 Feb 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645299084
