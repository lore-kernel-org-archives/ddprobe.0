Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2850F10E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656658612;
	h=To:Subject:From:Message-Id:Date;
	bh=QjK9ITUpU5iAFa4GirBlqbr6E7CMT/MmXtxp49yj44I=;
	b=ksDg44LJxqhYB7zSsix5Eg+TF92azbAJNNRNB/scZzB2aV+cVrclIiGvIlSlHnY2
	5BjON9oI7lbkABnxPW4HjZ7d6D/klZS2nQLICV3nYtqc1Fd9Tb/CBjpT/tKe73IbHf7
	K5AVApi+NxjfFyRuVAMAfgwB3IRd3gAtkASssDPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656658612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QjK9ITUpU5iAFa4GirBlqbr6E7CMT/MmXtxp49yj44I=;
	b=hd6HIuXwK7/8peqz0ULMIpScfmGVu59ht61CIv0+R7vMUy85A3w4XITLlWibp4+x
	a6CG9FM8dhjdT51XEFPDZ6vObuZ6qvlbsLUuyPR1IM3TEKcrxkFsP9k1b6aLQLjS/0G
	YLjvN5ge43lpGrDfbyoILetGOu8nNQGAHgGuljMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b88c5044-8f35c6e0-994c-4050-a952-3da00d156268-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a429a8e1c1ebf4bee20fb82514ac764e41815e90ab23de322514dc05581ba6fe
Date: Fri, 1 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656658612
