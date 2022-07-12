Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912774414
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657642612;
	h=To:Subject:From:Message-Id:Date;
	bh=25qkK1eHs9VItt6ALM9Rrq/1EI9SGFiCVp5ZYMS2NzA=;
	b=jAVk9esGbOM3W4eCNZRHOio+I+1N87AXdRxQt95+6IYHnotL/LSJIF8E+LQ1O/kg
	5hJZMvs12e3CafxDwuC+8yhW00aWpLA9KKrODQFagUpR/tyqR7ZSpYR6Z2JfomQsxhE
	j/9lz+t9B3yS0rOR3TZF51zSwhMfK1YOf80VD5iQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657642612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=25qkK1eHs9VItt6ALM9Rrq/1EI9SGFiCVp5ZYMS2NzA=;
	b=iBLp94wdrx8cMyGdv5rU7K1Gr5XLrhUbK0V0WrZtD1kf9J/+yUvLG7L2TfDH3C+l
	TWeW5BH/YybIVmhFp1PMPoxMI6Fe6di7mQn/8gJIuTGKw22Sr61SAHdFVyRY2SvbECP
	NWVBmsbzb3eBP9Bld8XiaSZ65eN9+tDv7qwcqpK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f332f61b-be2567b2-64c7-40d0-80ce-930cddd41390-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c747fb49dc320a4c6f7f00f2eb8a155d0c212338c6df636c89abaf3db2429303
Date: Tue, 12 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657642612
