Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528937B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661106652;
	h=To:Subject:From:Message-Id:Date;
	bh=Y9vj6YG5ArAfdJyCa5j0AffpT0Wg/0y3C8wybcyTUJ4=;
	b=ahjSuQ7k47xPjliwee2iiIq5XsjGfAW8TT1Q0cUpsfKG/kVCT7Al2mFZdPQIjppR
	g70j+0ddEK8Mid9TMn9WjrvGLZRxln0ftxgP+w2cMhdh6PDXBsTtyqJt6XHM1QHzzLa
	+L8DmKWKvGp9XTtzAC/wu0gyxUhNrcE0sjLtSQVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661106652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y9vj6YG5ArAfdJyCa5j0AffpT0Wg/0y3C8wybcyTUJ4=;
	b=XjXOYxZxNcRpd3EXY3eaE/3Jk4I+oWhLYtpql7PxRQKvhe+d+Ap+BDesgkZFai3I
	5T58ME1EzEWKHzUsghuOEGLVkd/crbUIWOssGPhrOh32yY8axzWj2IbrYQ2nhLRVC8D
	9dzqRRq+jAglJsKoy1ULUsD1ynN/i/2anhuwx5Mw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c1ac05a0-15cf0543-cd6a-4c22-a47d-5406623598ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0fc2935fdc10844b1cd43e92e1dd864c1f8c018cd1f1dff0ff77b229d2ff9ffa
Date: Sun, 21 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661106652
