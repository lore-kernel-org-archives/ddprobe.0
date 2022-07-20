Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248FB23A8
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658350012;
	h=To:Subject:From:Message-Id:Date;
	bh=TXyTBX+riMjZaEO/9OYqLaGMRBw6P+ttbRFywWrK2g4=;
	b=J5FL/gm0R4YKVjLWwcBGaIgnXL8+TummXRgy0T/4XtYDU5+lnfsT6guxyNliNeJo
	ovkyiheeugghmnIn3YmcmWQqOZ7bCCedO+I59v4rM+QqKp0cYSwtUe+y3MbRpPASQl9
	hDaVYiA3NTt5N5ibYF1pGHRCPG06zrAlvpmo00PE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658350012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TXyTBX+riMjZaEO/9OYqLaGMRBw6P+ttbRFywWrK2g4=;
	b=WaUglAyDTq9jIlia5eEa4NzFuJ7Pl887eu98HHm8Vl04tUb1gLdOHth5kNd/LuiD
	mZ9Dn8fJEHiEM9/eK/BEAWoLsnXfAi0kaAZgWL4pcHdWqNMuta2Hd30VbB2/rtrx8PF
	VT6iNAUihCKHXz8b3o0LUIhUcvhMrIdq7GbQJsPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821d5d077e-281f8345-23de-4f90-9124-bf81afec141f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4387f6b77fcc041daf12d5c8642128e563047c4ad87975b6c7c44b80f5f7b34
Date: Wed, 20 Jul 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658350012
