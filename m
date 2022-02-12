Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2396729B4
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 22:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644705636;
	h=To:Subject:From:Message-Id:Date;
	bh=T9vgWH+9XqpfaiOHhQ3pN/qT1o9n0C0/AamuIHbViLo=;
	b=CzAZ1eYnAe4A6ByYtkl8+TuBR3mGq/kilGNsdYKSEY9IdegK4Wu32pKiS0bRqVcO
	busB002R8QgtbeaxqTpxeBijM7rOLoY50p/NgwSvcoK7utSlQfoKWL18+XkuAvVv6hV
	BdhgXadlF3/da/6KbFZN3dXLvFsdZb6AkQcB5KxM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644705636;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T9vgWH+9XqpfaiOHhQ3pN/qT1o9n0C0/AamuIHbViLo=;
	b=KhxP3cRm/WaLRDIu22zHvb6NKK9ky9T2KZpYGn+Pmz/um8qgRGwglNUvlhKq0MI+
	2vnlD1NdA9GvxvQVUFRGsFkymZ7++fqqPelMH8zcW01cgcNLIX2GMOYck480VPhHFK8
	gpeBtYWsHWlD6nUJJpZxTnkrq0wzEm1JA+BUTrSo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef0186031-81b2b0ff-bd8e-4a81-a84f-6d4eacccb305-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7882428148b89686dfd93d352b5d70115d79a2645e907f45d817cb3f2a79dbe
Date: Sat, 12 Feb 2022 22:40:36 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644705636
