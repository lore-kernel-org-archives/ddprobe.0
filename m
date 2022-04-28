Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E6DEDC
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 13:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651152478;
	h=To:Subject:From:Message-Id:Date;
	bh=5SZ3BJXf4epWDYcejoekibgzaN6xDug03dchjC5np6Y=;
	b=Cwsq+yol1YcM4rDXpfnTXY4Yxgiiwnnx+ZRkmydC8rL94IA1+qCGf9NKfdjEf2Aw
	/VKvGlJQV6PQDztn/qKQOtzAs+8xW1WprbqcpHAFGmGnAhM/GwO1PeZrWXCFpO5OGsQ
	SJALr/x2jb/c9MjahzxMxvlBxV7OZEMaQJEgiiGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651152478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5SZ3BJXf4epWDYcejoekibgzaN6xDug03dchjC5np6Y=;
	b=Nyy/G8ep52nSWgIvTOqFyd1aPOxa6IHzV7QxOMZS3eCS7mMcfBZ5O/DOWDSppZjH
	ax3IVaoYnVQxvBfOrN8SVzD3R9aWzRdl3aizLPXOIVjw/o2k+xvBCnKzuUO3+m05T+T
	vq1+5T6ZYl+3i6oET9nywsIaQDVzbNd/MufLk0zE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180705b604c-9c5dc216-44bd-4c1d-8cb0-d439fe4bb0dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b248b9bfd60bbae2522934c9406add1d05256dc2018d912fb49548690bfd2b0
Date: Thu, 28 Apr 2022 13:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651152478
