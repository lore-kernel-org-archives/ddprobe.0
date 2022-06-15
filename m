Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3CE7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 15:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655306879;
	h=To:Subject:From:Message-Id:Date;
	bh=B1g2+OmAvVyHeQQsSjR07Aua+bJz5s8LvWknQwnN6PE=;
	b=G0LW6/S4SVVp1L/PWzxPGRKPXepo7h88PWgS9MDMTZMAgNOrlISlhQUpptOGrDJ1
	YRdlWH/WiJ6zPmPjHJ7h+/OiKd8CW/TUgGtypKczkoCpuvUxEecVG/zUCbr99/O3krl
	22KjTPaPSb3Ek7bhwAzUaUgiAHng/ndh8EsPz62g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655306879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B1g2+OmAvVyHeQQsSjR07Aua+bJz5s8LvWknQwnN6PE=;
	b=YwSM4j3rvjVHI+1ZptvcrqLKLNO5H0ojDAdCyMDV5xjhI11DULdc8G8mhWnIRkKG
	9BY7YuTGkBp/Qto+q4yaJoCHdTUKtwN9IPgsX6bFulOvLh/MeE1b68MlVVCxQNqX6zt
	NvXnjPaALYsvwtCcR0K28CXMAlg9D3CxCvILSv2U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018167fa8152-9da72eff-0317-4fdf-b8e4-2449bcd9aeb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73363ea24ab22cfd37f1a8d1085099bc86b9716c0d96ff370ff2de972bc77f20
Date: Wed, 15 Jun 2022 15:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655306879
