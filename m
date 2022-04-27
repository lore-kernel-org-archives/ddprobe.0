Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4A32F4D
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 21:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651094578;
	h=To:Subject:From:Message-Id:Date;
	bh=BfbqvmOhGBp3TdU1dI9UdHIndV28kZqdISOgPhFseBM=;
	b=ZIWpVMKUEd7AyvyI01O3KtUwgDBrKRASleb8OGFOjLv15tPEEzV0+NSIX2GCnWRl
	YSRNsGrzj9IdnrjJE4jFLMTBvhmKnPXnEzmitXPZpBT7JDcFS8S0EFx6qIpmwxfdOk7
	gJQzZKshA54KErw+PYGLjh0cQ956/kkKKx7Ew/jM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651094578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BfbqvmOhGBp3TdU1dI9UdHIndV28kZqdISOgPhFseBM=;
	b=P+akIxJNTaUIHEcAye8LQnbha7TtTjHd5XxQeejri0oo6YBhC0APyBe7ptXR/b1Q
	6+ABW8rajyaaUcgK63EryelyCton2jZWT1RUIoEcPL2gM4Ez05dsHPatu6BSGJjtq0+
	m2UQjtoXxPuZPLL0PncDWje/mN05eyqi5u1aO1fM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806ce7e48d-7bb59d4b-ba84-4df4-9122-86c5a02dd7e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2830f0c523360f8ea8dc646ac5c0301bb4f86ee2125a03689b27cd1918b76c6d
Date: Wed, 27 Apr 2022 21:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651094578
