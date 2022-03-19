Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0405395
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647733584;
	h=To:Subject:From:Message-Id:Date;
	bh=sK6jKfwHiSyPzSJB0sXX8QimGn/m/KPZLe0mnu7lmgQ=;
	b=dwpxpgGc1g8vJDFCmaSGU8Z6itRAXIDrUdyGbuPEi+BE9PzplbhlWu4SFcDJCYxj
	F5xSnUGvEgVBvGn/XSXFrar1WmBSzbzqkhNDbtSubbSBK0dwx1YCSphYQ27D4OJsYMh
	+rlyQUhCvE2LvSt/YgtRPymUfS4xcGDnMEnYBZ1A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647733584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sK6jKfwHiSyPzSJB0sXX8QimGn/m/KPZLe0mnu7lmgQ=;
	b=UAbJNvjNtR9yC1i1IsYAPXikwXGeBCskBZD34XOo2aVw6P/dGXYvwUaYZriqsw9K
	lNRzllkAIsx541ol9MamnnOUApWzjtC2r4mDngULdZDU5kXaK5phXTyXofszQv86Lrz
	BSByk7iuDFMFNzgB+oWVC2o2ywdL1H7A7CEU+7hE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa493335e-c6962200-153e-4e5b-b611-57c66a7f1bf6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32367b753ad29bf1cae1adf1c8686ccc61de03ec314490713e4265ba7414a854
Date: Sat, 19 Mar 2022 23:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647733584
