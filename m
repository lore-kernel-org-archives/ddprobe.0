Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1473E7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 01:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656380812;
	h=To:Subject:From:Message-Id:Date;
	bh=EqGJoHq96203e7bcVtmwxNvgffa8pQBRW0HqaOmdhNE=;
	b=VQe9Oslk3SDF9iEBJAFJyTgGQyODghWcqwSVRUM4kSd93d3M+B7uMViv3Lg/4GCA
	AhpERzF/jsF/XD1WtEd+1DHQbTO7V1M/N9MiI4Iw6QMqSK9FzF9JKjUVSGfzIEW/UGF
	BjLUSBEAiPE72wBbX/0h0BpM15cwiYWDpQv4q/FE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656380812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EqGJoHq96203e7bcVtmwxNvgffa8pQBRW0HqaOmdhNE=;
	b=Gyhxi1Gan6wn5fasg44wndzxbpv1iEhr7eNwJhDgt9yKu9ww6fAVC4rVsfFmYiMw
	KS2YkG/iKRfh7a0qLe1SF24L7P3SwVuX6pxgsXmVD1SB3dTHTMlEB3MS3if0Y03l7uv
	Ddf5uODT8fNvBW+ZbpzrqqfC9TT6tl/KDI7K7vas=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a7fd6c4a-b51ebe31-b0e6-4323-8931-76517987aff6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77621bb72737f1341700f571821dfd60a6aac8abd740effb751fbe59027be971
Date: Tue, 28 Jun 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656380812
