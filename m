Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C1717EC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656229612;
	h=To:Subject:From:Message-Id:Date;
	bh=lOQmx7mhOh9sQfzGsa6Gn9gh3T916iOksFGZFk4Jq2I=;
	b=IqnF6e/obCj5/TOq5AiZtMhs0hhG1dodC1CBL/WPU27VFpr8HqUO5uAGDmM35XBZ
	YE76u+4vLg75RUhZKYKYucv0X02Ka9YMdsuty9ithyVIN3e4BimZoJujpcjEyhI3NPU
	SqNyKoyQjbB3X550DcXtHA7+kqrLWFohPy7ZbYcE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656229612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lOQmx7mhOh9sQfzGsa6Gn9gh3T916iOksFGZFk4Jq2I=;
	b=VQytvCmu1xHc0TAv+GD2OSkAXTrGo2+JZOVF0xGu3spmQUM8MavruuWeIlRJiixO
	ZrGNIhHk0rXOa+G8pAoDYi8hKBn4LMg/gEYK1PeEGxwoC2YXAearLOXf3kOYFjTxKyR
	w/bfc7DaGRnXsAqGjUPJ69lgD41/ibXjwEm/wYSQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819efa4b11-70075094-7e91-4f03-82a2-dd4bf84f20af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ba378564241aabed3c2baf936a9bd2eb8d53ec4c52f67b692354dec203cd85e
Date: Sun, 26 Jun 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656229612
