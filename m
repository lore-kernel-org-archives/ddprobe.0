Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F52DED8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657372012;
	h=To:Subject:From:Message-Id:Date;
	bh=9o2I8CfzxPIIWpDZWSF4qATSP+8OO7lnWntrGNR0Ddk=;
	b=Hy8lIh4gjuhvJpjFsyQbc///GWC8BEcO+h9CySFNtU37/T+gCDrix8mPxQ8nZlKn
	CjkwXx7PKXae/201+YvSPv92onvm6kI3TsnqKqDikeKGFVIeo+Ze2z+XG/Wl8nLGobd
	GD0WrmUYbcWQz20F9lBQ4qBU2B3oWz3UDCE3+XyA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657372012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9o2I8CfzxPIIWpDZWSF4qATSP+8OO7lnWntrGNR0Ddk=;
	b=RYki1UGsRvqv4fFaCfk41CQa54JIb5M/uxmnSda9kdoppYt0eHoEx1wd30jGHr+9
	LAtAzsUGj+nFKj9mmGT7sz+phBZrB/swaaQEmXykxX5uZLwYrPdjgWiCY9ruP+HONdb
	a6NL5slBpzBOjSWh+T4HgYbs40y5jJ2zcCVY8PJk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e311ef19-857f0ead-0ac2-4f11-a002-dc072d96d840-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59b3d786419e0f78eed2bd4d370f3afec305d66196985a23523c12a4f76530cb
Date: Sat, 9 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657372012
