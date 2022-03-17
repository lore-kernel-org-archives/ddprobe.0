Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDDA2F31
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647536485;
	h=To:Subject:From:Message-Id:Date;
	bh=h4rPlW4dbjzhTGdQxuq9G6NdTm1lLoX3s9twHvGWFgU=;
	b=MipJxCQhrBSBmsBXVBgG5jDVWvtUqhPNvX7tJF1gCGsN8SILVGjLpLZFCcZRNbXQ
	/u+dwxLjib+7OhA9DkxoCUjLt82tUaDz4Mp3Xf43ptAaG08LBhQwxiNlMz9SXYKLQB6
	/XebdcSUeWkuKCbQsWWeG5Xz8ThVqKVFK813Jb18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647536484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h4rPlW4dbjzhTGdQxuq9G6NdTm1lLoX3s9twHvGWFgU=;
	b=WKT9Svc5YBm8Ag6FajFqwPZZ+9+Da6kD6DSNWHmS9m3/45zM1my71sdjU/6S06vL
	2mJ9vs9pdQceRxt1+N5YLxVYhE7iW1vPatU4DfsaVt/iIAKK/OjC85R+khwcvEA8FRI
	OX01OKEg4EpSvrfdmviGbnkK/Oby3WeIdWyxgjVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98d3b1ac-986e641c-7c68-4834-96b7-95feeec4da38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 833d36ce4e6f9ff1b9139597c3411328dfd08fc7f7e4e9f6a992b802b009cef9
Date: Thu, 17 Mar 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647536484
