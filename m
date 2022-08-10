Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6782917EC
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660137652;
	h=To:Subject:From:Message-Id:Date;
	bh=zmcZGugagX84bTEgTujxWQtysXnWyY3xHvepXFrmjbU=;
	b=if3FjKpHtmnt60gTvB0IMONxGXCANBMhMhFJB0BvY2pZAcC3cz6123F16zZIe+kt
	LVsSKwotqdGbWbx3JTrCilP/m5aoJXt9zpJ8XrBJZVP30TWKVW/e8wDgcR0LRrFaOwZ
	FdzPRKSy0BG9aj7h3gbxg3judmzJhhUjmyjEZ2Q8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660137652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zmcZGugagX84bTEgTujxWQtysXnWyY3xHvepXFrmjbU=;
	b=brsssgKLsKSLj5SSXAiSrRj5hg3krRR597Lq4FAYRXapd+xjRL9PSQ0OhzUOCXE5
	swwlvknMnvEexHC1E7ADKfORve1cLh5OksMndlnM1ZMO4y8Vji8XjKznyjLTEqESt7I
	9tgJwRYiXmosUBV5Q6m9JVYLnF4lXPDbNkBMRyNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018287ea4126-5b0552e9-47ed-49d0-86d2-8ea98590269f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3432b00f3ec4d0f5dd9e89f4d2d27c47f9e0001e4d561d24a6a3d73aa501e6e8
Date: Wed, 10 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660137652
