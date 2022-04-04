Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085787A
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 16:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649088118;
	h=To:Subject:From:Message-Id:Date;
	bh=YjEdfMivOzomAf+zzGHEJmLZPblT7ZL5KAruBJeLclU=;
	b=cM+uFWLljvVPdNsxrswOtKJ6uUXRjtTaoNYTs3CwmEODSC5grwIh5WYnkXH+pPWx
	7C50r73f3X9jnvYiktT5YrX8tw/qMU2Cv3YloTKzQG5CUFrfVTOmgAmoqeZJPWA+9et
	ZZ/gs9vPxnobQzweC6nu+PY0bCX8hUNXVoxGgRnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649088118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YjEdfMivOzomAf+zzGHEJmLZPblT7ZL5KAruBJeLclU=;
	b=CXa4D7xKcsGFEBO9ddXiNAD1nDJV9VXghCslSmuqwjxOxldwr0mKRhDwgppYEpE9
	BU0IM0RshaSUn8Xz6EyORAo3drdXBTHvtBKCMv/+Hzg834b+R+M4sobm089ICtG+l0u
	YhhIlz/iosud81wbHf31EQ/jM1QU0tE52lwqGrdU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff54fbddd-e3dd7606-e490-4e25-9a70-e3d12fc8b0bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13885acf6dfa7c86ce5641226d8b3a1e0467de1e2281b2b7708312b2acc74368
Date: Mon, 4 Apr 2022 16:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649088118
