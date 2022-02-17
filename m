Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E99D3B2E
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 04:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645073484;
	h=To:Subject:From:Message-Id:Date;
	bh=jSRCwlCu2cH7APHjNm3jeBHHI10YpFXJYsutLmnOUjo=;
	b=kTr/HxC0YZSR6aFxetjOSdLZ45BMuM1qPRo0FD/JUrtqpAyq1P+fQ5FIgLUx2Mm1
	v8lKEw5FpCsbKhvR3IUl/8oiekCh/kRezGmtQpsVasTFVWL9NXjk8541PLIfAIp8CLV
	S2W+xVIOLrJ+TnlRneZWuV2u3/f/HXZ3L6q8aR7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645073484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jSRCwlCu2cH7APHjNm3jeBHHI10YpFXJYsutLmnOUjo=;
	b=DNIB2vcwbhjVXU+4JqTWzZrv5GlERgjyfWwRzqcSZ9NYHa8WwD31Bu8ieMiO4Gxi
	AsXWx1Lz7QS9CMz41qn8p/TOhI0tDUog3IHy45PE9iKqASpql2668PO1XqtQt/rV//R
	Rc+/Q9U+uExDcP+n21AIyGPFoXl973uM/lUkmV7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f06054be6-b1eb9f79-1dff-4af3-94f0-5d5e5a2047d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 852520d5426bbd467c0b58d2cd8003d1b0d77b55b9addbdc2f99843b766aa203
Date: Thu, 17 Feb 2022 04:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645073484
