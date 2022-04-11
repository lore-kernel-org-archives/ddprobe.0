Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215001840
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 10:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649673898;
	h=To:Subject:From:Message-Id:Date;
	bh=xOHMEW1tm1ZBtEffpyRjZb37S/TlndarcHF/W933zk8=;
	b=TvNtTBlR4b3/4G9ncL6EoD7EAN4/Ytom5uhSuHkQN8iEEboRdKLRs6zj/MLYzN1/
	SWXNSKtwBK8R+Fo1pCSBq2ph8moLC0rIzbUAz73siIETlIArx4/8y+L6iYZME323syx
	Rhxn95xamk7JVZwC6wgrjYVTFJVaSspMReLor8/c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649673898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xOHMEW1tm1ZBtEffpyRjZb37S/TlndarcHF/W933zk8=;
	b=OpoLUs70tQosTaEgS4EkqHmCFZdKg+vCV4199bNnoI5lWL0hLCjjoiAKHLbZwtHj
	68BDZWbp3b28NpcWI2wHM7GaFodi7q2ef1XTvn4qsqFSx6bJc2BBZq6SoGL7tw8iGoz
	rCj6Ep3YaUA/REzP2ycdHuaE9Gd/tueVRezBXabg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180183a0928-8650d38d-1aca-4701-a9f7-423460eddcb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88be7dfb0f7d3e4344f14ddddff74ace0c23498886fbd29fce10fb2e7ad3a154
Date: Mon, 11 Apr 2022 10:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649673898
