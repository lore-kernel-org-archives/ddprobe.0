Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A151FD2
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 20:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654460879;
	h=To:Subject:From:Message-Id:Date;
	bh=tSB+9fsdmyN+uXli8tWSKh0I1xLJXrtuLI7Zm/AKId8=;
	b=liKKVfb8XlxAI+Ozv5fb0OFu3NqiieFcn6yNvmvV70/zle4iE3lUQdEG3mqAHled
	cK5cb0vN0KC+nHr/FbQOzIqHtFRHTTQjNT//pAc10qanvBM5DbHkR26htm9oYLRpGll
	LbqO7zEC8gTl811DB4N6o757SZnvYnPgG94h2nQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654460879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tSB+9fsdmyN+uXli8tWSKh0I1xLJXrtuLI7Zm/AKId8=;
	b=F7qPot76Mnc7t2KKgJ+O0vDdN9B7xTaBgwW8QKYGjfIVq3FTJJVyKVcjslhrwHXd
	7VdSsYXZvwl/zGPBQxMjTZpBzEylkmBcwoGpmJ5lEtUhapyfmD8gVjZnFM2wzhwIVxb
	yC75SatfJf1CSxjZ9jp202g3CAnJKcxAWeH+kkFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181358d9180-5978e6e2-e6a3-418b-8b03-2c78c2885423-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25fdfb8534517cb16ee2714f6c55f30d4e734f0bc3165beb0131c044f2666c86
Date: Sun, 5 Jun 2022 20:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654460879
