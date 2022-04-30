Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BCC23C3
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 21:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651354738;
	h=To:Subject:From:Message-Id:Date;
	bh=zxzd5iaEs3IsENclqzyo1OH3pgRE0XN3fXU9OFsOL2U=;
	b=MLdCnp91WyaUFl07FtSQ9h+XacKVn/K5vu9V3qoiD1zENuFvMSTTOETkxZxKmYXD
	wFktANE9b21VEGn0okf9o7wScXLO4d6RM8jwwk6frCAD5IeTHxVCFw0sz0gTk4uXz76
	sxrBdO6QXqlO33gWIUrM8NvhDq8EjNgCXZliogRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651354738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zxzd5iaEs3IsENclqzyo1OH3pgRE0XN3fXU9OFsOL2U=;
	b=dGbbnMou+zqDJR/vB2qBVSOra378TYAXldxCAekKggvXK0Z3++OxsOTrA7rERbH6
	i1+GaSUO0SOaJC+bcLkrOYK7y6pWZ/uCtr8ds3E8jWBL4LHc3HHzPPPytBFhgAdUxdm
	fh2AKHibmIoBw1F9BUJYzK9AZTA+bwSSO/hXCiPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807c699e75-ba222080-9d9b-445d-8e45-c530dd6c2ab1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce54f3f02a7d3de8d9883cfde9d79f84c43df89c6aaf08141c835ca14cf9b15b
Date: Sat, 30 Apr 2022 21:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651354738
