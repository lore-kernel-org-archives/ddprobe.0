Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A4E7A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 15:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644851449;
	h=To:Subject:From:Message-Id:Date;
	bh=oxzZfiRHIlcVeFJWobU1hCxOojoIPM5c5ouBluhLmwc=;
	b=i8OdQXJsR5N+tk2tnktpU716MwbiNzm5ISgNKUpBxq5FnnjHplU5CkJ1HxkgKI9c
	OWFtmvON3pWNBMmJkXVkHF3wgUtebh4zvWm/BVwxGtXcXevQHyWTS6nQt7Sy4MT3F1w
	yRHNA3v9lOxMniB0t6GFbKJp3/XnZXkyhEICU6TY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644851449;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oxzZfiRHIlcVeFJWobU1hCxOojoIPM5c5ouBluhLmwc=;
	b=AVoF45Eo04iOeOmtp2z1zuogpLF3hCJATpsleU1o7a+aOozsxRZ8GIIvoIO5qJcn
	04NhopMzBs/szmKaXyVnLFVKhl0mNSRixQAENlgTHa1gV7UZ33VgWZIowCBwzY4w/cw
	W6ePxsFZQkdt1hiSan/0Lsn+N9CaF6HZ9FhDbO7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef8c94bef-e263d5d7-76b8-46ad-86c5-747bd02ce4de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff507d039c314295591c68e0404bde3efa34309a3dd3a2c72ad7bfc7e8f5471b
Date: Mon, 14 Feb 2022 15:10:48 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644851448
