Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A882CA7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660237252;
	h=To:Subject:From:Message-Id:Date;
	bh=a84X/c6nCEv5LSzF+toHmqzm88+asuVOvhp373KZytw=;
	b=jhmSvz0Vda0Y+5v0tEl9r3gs35yELQOQ0d3kmxmeYRe5hQ/p9GOTIJKD7WaG1FHt
	H3VJsz2vPX+dvk/ucZxyX449SfvT6K5D1wK/dWcrgPdbeGuuALIAUOdhI1/5sZkSzVT
	eYNNspnyDEI8t7fdmJaJ4Z/pZ6SNEvuBeNEX2KKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660237252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a84X/c6nCEv5LSzF+toHmqzm88+asuVOvhp373KZytw=;
	b=F9yaIMsUaWu3UvQwdfgfLVqO9CT+j+WLqvUZ9qi8QRkR77TYQ6HTZa8ebPQyqZBN
	aJT3oVPWUlbSxXaZ2eMOCcQ7JvSaZFtR2lQsUJ5GL/ZOEME0UJurjFIwIz/hT9ax3qA
	r58hm9AGyKRo5TiRdjb3WtDHOrfQuF1Kgu+fnRw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828dda0803-7af62784-f0a5-4972-8420-bf45d3a5e632-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ac4dc5e75c7d2699e568902dadf5fb856f72fa82c09c3c1195dab7cb004fdba
Date: Thu, 11 Aug 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660237252
