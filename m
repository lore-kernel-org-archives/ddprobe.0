Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487EE3FE5
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659212452;
	h=To:Subject:From:Message-Id:Date;
	bh=c5e+fJQ7eFK7Yf8nqbJzs3sZYtrfGyIlZLVsit0WcYY=;
	b=G4wVU0pupJ7eQ40cBYMMLrkpS6kYvmw1qirnSp7GDMdXtZiwolmnA4fwvy0iXHSJ
	lZdxepOzJhZ6/l6cm8kNEvopGaWVEMN9Ygp3AKP2F3nvhtO4KQcLpfO4R3PDld5/x3h
	CmvIzCiUbo7owWktn1jhiSUWqOlHhPEVFuCtMzfI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659212452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c5e+fJQ7eFK7Yf8nqbJzs3sZYtrfGyIlZLVsit0WcYY=;
	b=QGwNF8q/455ajqcRMwBnWkUI6uGZmO7bIO+IFsQop7byikxcyKD7pbLpB3/lm4EU
	HpF2hIrorH7sejIEJpccGL0XQ7I4JczbxogSqlukcZRog2lyocsn5Ba0nLFw9yYZP8T
	D35Mhs5tU2m9PhnTxhR7grXz06Vg5wtzJnDJDJvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018250c4d2b3-467e3778-28d3-45ec-85db-618ac5d2691b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c110d64658d7b1baac3880238bcc8d17603b3e888fcb83c5d91e562a5ff9ffc2
Date: Sat, 30 Jul 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659212452
