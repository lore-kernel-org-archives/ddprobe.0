Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003581364
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 14:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650380038;
	h=To:Subject:From:Message-Id:Date;
	bh=9EFstxOzBZ6LYnLPN8FhddPC85nI9b139XU5gg/TEIw=;
	b=YtQoRhv7KUW2okdZUkqPqSTKQDzOgYiw2UEwyev/Av5eHVDg2cgUMpTc64NYVuKH
	5YlJTBWB66onycGG5J4jkvm81Z/X5b9fYxWsfRQCmQFKWoS9CqGs3ShXXoX2hr9ifbg
	gICDUrTek5JhYlhsZxqoIlDqg0pSFiqLeCgffc48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650380038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9EFstxOzBZ6LYnLPN8FhddPC85nI9b139XU5gg/TEIw=;
	b=D/De6S8obbiFva/BPMyjS58bZCH+fKV1fPykXu3Aqr8du025hvTarOqYXftO6Kfg
	zVHQEkSqvvl+V73wGrheHPTTdcyRudC0/Pj08Thz8O7r/3zQlBkyxACUZhiUWFml+eC
	YHMS/vsvdwKaZrKuIOWmUU55ZOI2HVea1wsGY8TM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804250e09e-6a0d3c9f-cddb-4cb2-a57e-dbae7b643f03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe987853439dc780fc4f179ff98d67b0815b8b89d515c70d27c496fae04f7d77
Date: Tue, 19 Apr 2022 14:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650380038
