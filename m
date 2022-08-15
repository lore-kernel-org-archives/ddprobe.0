Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F1F7E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660583452;
	h=To:Subject:From:Message-Id:Date;
	bh=UumvTZAqCBdwRvRs7dAOqxAWq6nA5Cq6cKq86QYCIoo=;
	b=Wnb83TLDi8wT2WAXVjysf1pKWPJdO4A3LvksaOojORonwrNDjIIIUQshjKoK61Mi
	rbfIR8E60l2oJpPaeuW3RmRZh/qwgqOdQfhZwruzGqkXi6sAIbjM+1jwNG2qwpbSLCN
	vEcbcAcV0mInOoTklPq7bizmlExrEd4UANxq9RZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660583452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UumvTZAqCBdwRvRs7dAOqxAWq6nA5Cq6cKq86QYCIoo=;
	b=HzD84Owqk+C4S6EsfbeDLeKOfP2bmJt8085MmHu8LAYZNVC4kaq+DaJTq1VgXt0n
	jW+aAWdtm8aWG4FjFDg4lHlv19Qm6gP/pCdhHrxNGHlmdGUogNIU+e0TEtBdDLi/94B
	b94EXG/EuCS2568l2v799FqwGYAyTHeXznJeq6V4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a27c9fab-13598e00-5815-445b-9d06-ddac89f49fc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49ba322eb2a711db7f61bc36026ed1f0bae85de0c09740d834cca80b71a0c4fe
Date: Mon, 15 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660583452
