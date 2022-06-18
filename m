Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038987B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 02:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655518919;
	h=To:Subject:From:Message-Id:Date;
	bh=0EiAPnqsEP0aY8yvVM8U6dP6H2Fgj+8bR2MYrMhCsLs=;
	b=DYBQrZryI8zFEry8oRfu2Dtyv2FkMnsnEsU6lT20KW8vX8c6jcL0RDk+kCLAr15g
	xV9lvbtRRs+mgziv0WwA+p9lOXDcwGK4QoZT7rYYRlA2bJzMrjtDu3w+uwmoqWBDuV5
	TbPjrp10NZT+BYd3E/LO0JLRk9H8szWbbT/bZMJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655518919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0EiAPnqsEP0aY8yvVM8U6dP6H2Fgj+8bR2MYrMhCsLs=;
	b=ScyqwrZ8MvVM4V0vCNlp3rMyo1JkOR579dqWXCmTj0Soqm8zmkk74ZC/tkmhTM97
	c/Lis85A6jnzMnp78ExpE5b0uuXuSN/ZZHY6knxTSzyXCjE4G1K+a3yYAbc42dvnYM9
	c4s2IjcPxNhfN4g4bV56usWAaNT4qLtbErL5cP3I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181749dfa36-840725b5-970a-4b43-b092-9e5daa4c5d25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fe68e2b5158be3d5507dbc7762191b671545475800ecfe6630eb4ffd03b3031
Date: Sat, 18 Jun 2022 02:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655518919
