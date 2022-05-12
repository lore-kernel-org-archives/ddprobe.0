Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2903FF1
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 23:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652399699;
	h=To:Subject:From:Message-Id:Date;
	bh=ExLbscn+Se9SiiUYQg82JpdpMnWr1VTz673jjZR6e90=;
	b=GRTZgVBKyDekajJdkVunD0JcfL6XiYXpZNcLD40R2xaYHfW7eYUjPAUOPanH5nW5
	/qJN/Vy43AzUABKD3kRrS5n9mBR3tu3t7uRMmplCPZp8VpFU+qkJloLp1xuvG3sqQWM
	fnpPn/wYIUiDWbzci4aoI5dlu+LbeMsr9ib+0QgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652399699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ExLbscn+Se9SiiUYQg82JpdpMnWr1VTz673jjZR6e90=;
	b=cIRmrFAnD8jxqi2aAl0EYLR8VMPzaTbxVOMt8R+LVCekFTpuRUzHM+14h8REZbBx
	X0okETjeyRGnwOb14WG56PIDN5JOTvI1KkGzbcOSSX3w1D9e3HL78p/YkBAbJV3OcjI
	MSBlNs8IQjrj0oTPTf5cGMKuPyKv7YvrdgSWohcA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bab2758b-815bac16-1148-4999-9670-091e30dfa241-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a8393018c28083ecefe4493c3590d1711903ef36467a3e56ed0e473b9657492
Date: Thu, 12 May 2022 23:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652399699
