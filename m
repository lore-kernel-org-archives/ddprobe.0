Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6096E28F9
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658847652;
	h=To:Subject:From:Message-Id:Date;
	bh=swm6xagFQ6kMc2IzJC/KKc5CPpLf814kgHSB1SKqmVM=;
	b=JZHsn89h3g3xyR7cFOcHuXNaqawzGa701O47ytTvfqnds9xqFT8Ssoek2O+4Qs2n
	B4c6vRNzBlB/a3+YV6CC0XagWZ7QmJme4vVF3oWFNDIoyp378ZnQ+UBj/157QcHAo5A
	wKGxeWi7mqqiSkaLloip4hi7GEc1pshDUvKR4jY4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658847652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=swm6xagFQ6kMc2IzJC/KKc5CPpLf814kgHSB1SKqmVM=;
	b=lAYbrY9x8v4AN74g283SsHaN/lqn6RegmVoy8+B4aG52NGfxG+YGmpKC1tqS+FF1
	s0U4Ux8ZVdcC1mHpCiMZ4cVk3TfPcU27rKAHpFEI1oLjhV/1b5brEhjT9XmJWdEHq22
	fAwl0oEH+jLnSZrFyJgpDrNHauG2/k+H0A3asT2k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823b066acc-3ebf713e-97d1-46b6-9471-9b214e2cdcad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cd4b3294bfbb2bf923b904355c8c9910b748e2fddbd6205e3b9a5686fe86d5b
Date: Tue, 26 Jul 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658847652
