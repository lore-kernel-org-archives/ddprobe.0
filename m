Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171A1614D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648058185;
	h=To:Subject:From:Message-Id:Date;
	bh=3uFS2f1SSF5oJmU9PsQgMcoe5UnYeGQc0cN2QoBxXtc=;
	b=RSEP2hEJteQCBzDDefJ9mxa9oHFx3g3hhARRzpFPJj2PdOiX2h811LBH8QDZoj7t
	H4a1GDw49RCoTZercbop5x15uU+V5kK+t/m8rv4MYQ4amrXoSmvNuEcAM3k1HjycuSl
	M6bM1kOrWjsVHwkWwonY580dfD8J/owpmJsT+ToQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648058185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3uFS2f1SSF5oJmU9PsQgMcoe5UnYeGQc0cN2QoBxXtc=;
	b=Fm7i+hEaMo5/uMAYmWEKiF3E/PzoLZSaC3JZd1DAavBv3N70GGmdb7tLveKhHfhH
	obBOY1bqH58hZxP5uDBIjoT3t3JBnJ5XyVNQ9N5ya/Sz1ekPkezgFOzCsBFeq9P8oyi
	UbFkHAYa+w3Rltt1NhCd6q79V5YKeR4eYN/lm9BI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7ec34d5-d2d1f0f8-9004-4afa-a78e-1a264e20769f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c648558704019450535965fc2859c56ea934e508452c5d9c50ec82473a71a144
Date: Wed, 23 Mar 2022 17:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648058184
