Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD6A2F34
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657883212;
	h=To:Subject:From:Message-Id:Date;
	bh=PdwPfI5wNtdXxFoRsE66t8XbgAHgvG64k6OMZvAty9k=;
	b=O+JCLzqYF7Mk66gp5blOh/PhIBYKvm3T55f3N5+gxcE0AU1IRq/eNJRcgd0e2Gyo
	n9ovPokXOj0HbsblGTWlaKUCiITVbrWLklO/JQOIzt0JyaWdPUrgikCAgMsdOrC39U7
	MiK/Dj9vXszNOp6XYig0mBhHlY+u0lF7nl6ioQCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657883212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PdwPfI5wNtdXxFoRsE66t8XbgAHgvG64k6OMZvAty9k=;
	b=ISbAmF3XQevAdEjRuafoJG+fYOtJw7uuoRPSPPStBHIaVlLLH0Mgvmw+Oto9G2Ua
	ad7O01eW+Ozx0FA8mRhLKgWXbb/Gg5613A1vuT+fXdthc+QKbdNmgme5/ISz+i46cBS
	rXC61Q70VnqrPdDosxU7j0Px4N2raqueCmv4xK5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182018a3a17-045ec5d3-c76c-4a19-832a-7a9aad951db4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9b1e4ff41ed42348d13b7026be0155c7e130ae941befa411d3052493c837b1f
Date: Fri, 15 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657883212
