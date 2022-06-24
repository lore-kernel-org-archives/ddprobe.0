Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D9E23DA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 12:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656074812;
	h=To:Subject:From:Message-Id:Date;
	bh=nKHnaaubkQBF4zpBhyL8VX06+z4kafq4uhttq20GcJ0=;
	b=EFoHH8GeIMsefPrChXeHUpeZ6OBRuFkeX6VA8h2XCtbC+27hLuG3+ijoY9btTHFi
	+AYB84J9vUCGp8Q0FP8yLkhCMyMsgmKvjfyF9UqS3HF2rub0D7L8xU9sOvio7RN+Cfw
	Wl5V0sYL+mUgPeRiNKZsvHkq7HIkjwevPI+jdnyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656074812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nKHnaaubkQBF4zpBhyL8VX06+z4kafq4uhttq20GcJ0=;
	b=F80BHKqmngqEmkCR+jwQ4GKwJ2hdwOpO7hD9lCq3FyQWBF3emEk3QcO7ynNXkz5d
	KY3YWxdJw43nUe+AL2bU8QfmbPRWzPICgB/y5QvWerYBIaFgWj+K3DEJac6HuTeumkJ
	7WHW3Ixc3L8AmVYK8vh0S5ZK+UxvruCLKOHUbx0Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018195c03b89-99eb192c-64be-4636-8134-9bd9ebf41b33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 816b37c77c9d2231c9d87db51516557021fdbed1febb66549c2ea18c939f4117
Date: Fri, 24 Jun 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656074812
