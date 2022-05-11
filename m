Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1239915B4
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 03:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652240339;
	h=To:Subject:From:Message-Id:Date;
	bh=UAnKGPg5DIvcDNs/+yf5gBlw2A+8QnVKwieyeujDJ5g=;
	b=TI0ZnowFoQZ1iS+jmZCXNSKJgAwQY0gUyu7UwffFu01urj7Qdi1awmrUwVYxOw8/
	ogwcFhwbixR07D/593/win0znTRu2j4xUoj2a1Ut0aXiADu/HtHlpZxyu+x4zKg/0R2
	wQ2WzG3ugq5cp77LFQh8bTGiHhcc9fkmPio+BFn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652240339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UAnKGPg5DIvcDNs/+yf5gBlw2A+8QnVKwieyeujDJ5g=;
	b=fgVb0Dgj/tVyyzhjXOiTE3ggXkcW8SZiBmaIkXdgjJMt4shKH13VCKGOHSnPaUwW
	8WNg030HuCXG8yJ7vIdUeb+O1FGmegpMzdZcKvRg5LMXQ1UpIq2EKjG5Hx9owVCSffm
	Q0zwmpK6wj3QIywcsdV5bu5Z44WodUrKAr/kyilY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b132d13d-730a4cc7-43f0-4387-bb42-8ba0891a5684-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa86491993432f6b5878375c9d39e3017d80ea055e1913b50cb0d6617cf6e328
Date: Wed, 11 May 2022 03:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652240339
