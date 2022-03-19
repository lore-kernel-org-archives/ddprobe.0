Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F7817CB
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647656484;
	h=To:Subject:From:Message-Id:Date;
	bh=t3mQOVQ+t3WwylUZE9hQFltxgrRPcM9kqTEctnJR+2g=;
	b=PfqoFv9nc/Kcw1qJ2E86+vFBfo7djvwfvLQ1jp3kQPuR1zR8dXOgtlvjt/nPMSQN
	mGJfhln64CmbDmQj+KiHyk+tCMj86y8ZofPptoUU5tFC8BPrOvucTbqn24JCwjBoFPJ
	Tzw76/eqA34F+aaP+2x/SPwthDzJfXCtSu6xOhUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647656484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t3mQOVQ+t3WwylUZE9hQFltxgrRPcM9kqTEctnJR+2g=;
	b=J8CDXfWd0mlQALfhy45QAvpDKFcgoqW0ZSacdtyGfWWxNh/vpXDF4FPx3nmM7J5f
	ztV0OZcyqxXNkHDem4OiHDVNCAi2NAyAphIcGGoT+0pquNvWDXn8vgIPtwSTHQZllTZ
	An4O47nZrKoXhSIUNVT3/FwwDkY1XMFQuh7k/cgE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ffabfc0-2dbe91a9-bb5b-4584-aed2-d3c5f4501ae5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54d698ed553bb58ee04297db030a0df648ccb552a5f0d87ec3dbe2789bf1e5eb
Date: Sat, 19 Mar 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647656484
