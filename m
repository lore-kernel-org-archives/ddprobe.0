Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1423D15A2
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 03:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656905812;
	h=To:Subject:From:Message-Id:Date;
	bh=F+5x+MNI93EB9JoQub7k9406XD8WE2qD84kxw7BMqOQ=;
	b=j+8yqlCtZkXbYglxoG2mv1R1n14bCfR+TMakkLHjFWbDL0CaWhjkRG2qG2CZ6Q/A
	H/EUYChutDcfSYk46v5ODDaHj+l9yrYKEu26ZWWzn4uujF2atfPw9QVce/9Ql6sEMbz
	GvX4EZLZOOteQda2UfkhdlwZeF/gMVYh7NImcYVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656905812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F+5x+MNI93EB9JoQub7k9406XD8WE2qD84kxw7BMqOQ=;
	b=Ra0+W0uRUwmwtKAJ9ial3nHjPbhBGYETWu+0L9/Ld+hu7sZY50S/riC6lmbC7La6
	9x5XGprq/nLrmH8KFtvoFF/VsT+3Vg3rPoIhck9FlS/2xoMGsRqOVvpG5h5VSfQF0bA
	zILjQTxm50GAvad4p/tw+MgouqQHkbCWkFnB51mE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c74849ca-8275e3f3-f8d3-449d-b80c-4410675c7580-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7058e7bb35d6622b3881b017627ba986e139409a95a7e55592335f33270ff998
Date: Mon, 4 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656905812
