Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C004B15A6
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 00:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658450213;
	h=To:Subject:From:Message-Id:Date;
	bh=4QRplF5/5KkFP1/+KmxtcsVQs1473H6P3TJPD3ixdmU=;
	b=J+g8JVneEBlFvg1qC5zrFWtinDXlkSyhGkhVe53MMxyORq285Qz4Le81AUW42w6p
	HHR7qv0+Yp4iAmaFfoo07AHXdL6sGhOERynHhQNFFRf6tWUQN13tXhu+wETwyMVvaNX
	E64aA4tA1/s0EaMLoSul7Uoh2yNkDahZ36RD21cE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658450213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4QRplF5/5KkFP1/+KmxtcsVQs1473H6P3TJPD3ixdmU=;
	b=F7jqcGGJlLzGLeGOnF5EsSqP6AgOoQZO6uhuQ9bzz8uOkhzVbhd9M9VLfNcwAO5c
	SGmLjAJKPTW9CUyYj5R0HVd/blaMo3z2ydJDXPRsOG4Wujxa9PFMQPu2dKYhY3g7sgJ
	BiSv4FNsPlyeLJ/Un93t9+PSjvTES6dJiPQdmSJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822355f5f2-2e1739aa-6239-4bda-bed2-419c4d1d4b58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92fd139216a50f8dcd94cc5cb0812cbddeac65fc974b1b4e6d5f776cb539cb8f
Date: Fri, 22 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658450212
