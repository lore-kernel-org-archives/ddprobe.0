Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD623209
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656421612;
	h=To:Subject:From:Message-Id:Date;
	bh=qnqxnCDe6HaGbHIKnCXKnleXNPxJYALvbq8tJE4j3VA=;
	b=CQ6NDJ9/Y8NdzxeHYhHLuxcbceBkhTAQ+4928RnXye2zuI/yBXwupJIXOhzrmKh+
	akgQ7ow+HHpe5PepUM6HijiGMHESts70nKMN9FblnHmqqi2gj0vxFrvoGfEhAPtba4I
	3wWnp/fLWfH6/4UN2jr4qegBuQnTgYr/6PT0SMvs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656421612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qnqxnCDe6HaGbHIKnCXKnleXNPxJYALvbq8tJE4j3VA=;
	b=DE0itbvgmrP+vZ1dZ/Lf8UbffA/LR3P3j/J9L1+DJnDPivJ2/pil/EZrnrDjgBEL
	4ccH0vP+Fxc+AlDPEeUoHkCQUu5FaRpzAcfDgm7TBE6e0/mCB9iWRX5eHdzSGHE8gj9
	54ZU6p0wvqLIktyNTYYyYjAVQ6OJPk9SkNN0lGbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa6bfb0a-fbea9027-ef3e-49eb-9a25-fec5f7307197-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d6b76f752d592c19a2472bf0e5bad562ed835fb0cb19233fd1109973744a5c6
Date: Tue, 28 Jun 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656421612
