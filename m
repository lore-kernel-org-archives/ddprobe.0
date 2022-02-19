Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0C5320F
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645261584;
	h=To:Subject:From:Message-Id:Date;
	bh=2KnCEo66b9azryfvIFephh0zvzGJ70a9hKR/biIfhRQ=;
	b=Z+x/AqH2XIz0phvDef+xXWUCemXBlJh+xTaoCC89zNrkVeLk7xGuhndLV7W7j8Gh
	tWNlfLZ9TcrZnnVKHwT1dg+2qacH1L78bujL8OAPhE25Ssft1bvc5vZnu30GMa6CmLC
	LoKnYkyxq4++0fLr73X64z6ZYSw9zphOPFtuIC88=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645261584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2KnCEo66b9azryfvIFephh0zvzGJ70a9hKR/biIfhRQ=;
	b=TXhI/zrXhg/XMDPpfuf1cWGd6AvJk1jy6lk65/XlMMfdQtZ4p7lqfq5tmN5wuZr0
	VH0AzL2o+pVK3eM9egAskwqmui+Dii0k1TYF1W4j6R67Q/ogw4EjCrUNf/Jdt2keX5M
	8LSpxNxnfwP7pcmno3qbJ8VW131DC0vrMsRI2jOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f113b7991-a380eeec-eeff-4e5c-bb28-88a04c29f3ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f96cd23820fe350f1cb39f8e6a68a342a1a76e8bbe9298d7427e13b32f9dc6c5
Date: Sat, 19 Feb 2022 09:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645261584
