Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417FC3FEA
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661117452;
	h=To:Subject:From:Message-Id:Date;
	bh=u6BNZOW4O/2qBu8U4iBLrf7nZKs556DqTXOtCIaoqSI=;
	b=Uok3obgR8VLiIJnLL4+NNAsBw2tiNsVr8kym/uHaAjXkjGs+JV2SpUcuSYtULAV4
	NuSrY2HB0S027hkaJirphCHLbQBNDswcjJ+Vl+3uf0M1UWM8wg+w/ZQuvJFP4IcW1EA
	AAV5mXmrdEdG1B1JlZh2y+XnvGyHoCp/OyaFbRUQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661117452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u6BNZOW4O/2qBu8U4iBLrf7nZKs556DqTXOtCIaoqSI=;
	b=d6hqdS2Wb19v9umGqYAPtOxzr1U/4SZtiHex5zYu6sEyijMAU6UDe56X/OB7gK0I
	oy7+cKxe3Vk/fXvhX2Ahg5sDd0T5jwACTl783EzglBxdjeRnThGb82qWfctjwhNLS9A
	gw6j56KaZFxRCc1hrpiw9ltfRSLJUwfh4gzQt8S0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c250d0dc-754d7268-9a6a-4e0b-9807-0c3b504cc427-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acc738d3d00d8bfc4d86eeaf95c6f324c600c7c58780f10fbe83f9a9b4e4bad9
Date: Sun, 21 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661117452
