Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5074A7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659318052;
	h=To:Subject:From:Message-Id:Date;
	bh=+lUu9RdBJ8C0rkmI2afEqQCeZ1kc/2HCOiS+g4HtsKI=;
	b=SY3oKXbVtudTzTi4vt3zfMhDG3azkdu4mCDBTpsyVYIyUlmsEWQTbZdnzS5zvZqT
	K4R2qVn8KKvKYnlZKyDN7YSnrHwM00nkTvIx9UpTTqdDZdyOOkkNnr4rEzfc6SycRZw
	SJa8VqlkcHZ/TyvUtLhQ6PlENV/lD2cxDZ1Qil64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659318052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+lUu9RdBJ8C0rkmI2afEqQCeZ1kc/2HCOiS+g4HtsKI=;
	b=CeeYsDImYwr/W0pDUfvsHu/UHXccJ1Cz0kEJ2AUtRSeqe1bBQdprmTyTFeVy21MX
	61SN+XuMbxnPKgamnhVjuWlfPUX9kR7zcmmr9Hz/Pup/sOKjJs6iqs/bdFIXXG5+aV0
	Oaj751fUToueSuHDp2x2Gav9dNMhuq+8C9rHEH7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825710269f-aa89c79d-b233-4ff1-8f32-3074e2755b76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7cc3445cff4f29cc8c1c8424b560fcdd098ec9fa446dee983b6a3db36c4e186
Date: Mon, 1 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659318052
