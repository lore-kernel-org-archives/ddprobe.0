Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DB442B5
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 18:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647974785;
	h=To:Subject:From:Message-Id:Date;
	bh=LKzex4rY9sMiCwVvaZn7sAzQOJLcmw9Wd1GWAnfC2hs=;
	b=H9BgRoWUjBKvyA0NzWT2dnRwe2FI49fzCXcIBJXANE/50rDttlozxaF475URHSli
	8Q2eSW00JgaPujn0JdkF0C5QPrjUCCSVtA8KSM4hxjTw66jj0pKkvsiTHkyTqC6dkWe
	pqfqBdax6OG/lcyaFid0Faj5TGQSMX0eE7Op68yQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647974785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LKzex4rY9sMiCwVvaZn7sAzQOJLcmw9Wd1GWAnfC2hs=;
	b=OIWGIcj3pkpvq2YQ5v5QW8ssCcWGdgybsSp7naCF3Zg5vlj/6L0JGArB5z7Uv56n
	7PuzTfbYyCy1rS0y4GeUX0SgvThpH3L26EyBTfMhpCEm5aqJnie8YbDYQFpF6ZyNpCM
	I34iB127tewADRMEc4Z5gxhqgcowLbtgsqmk72n4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2f39f3e-0890fc52-d834-4dbc-9cd9-6484026a1a65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7d5744d9db5cfae9622d6d3b8494f70ab2141b4e7fc072b9d2b4d1c005b39e6
Date: Tue, 22 Mar 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647974784
