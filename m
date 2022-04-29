Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C42D10E8
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 05:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651210798;
	h=To:Subject:From:Message-Id:Date;
	bh=vs7YikSK9zPdozw79XjpOLw8Ohf3gUBcUsRCp/b7Vpg=;
	b=KzHbxKXRVn1KiENClCKBAfD7cnzBvt5HFSca2bhAJM4aRzzzpujE+QaObGXrdxkQ
	9ZIUx0WE9S6UEDKQcOS7VmT/PLJPiclk5r+HLTwQobhrQTxLs4cElvgmGOFdgzPLYIa
	1Ya+UfCR8oarXTNb1mTguovKUz+xoJQwSzu5UxmM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651210798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vs7YikSK9zPdozw79XjpOLw8Ohf3gUBcUsRCp/b7Vpg=;
	b=WRBasL/bPimKuomASfbIharUGIJYj05K31L+cb9fR3jIjeEa1zS1MMnIDotwpnOR
	HM/Qd2s/JQCs57m3MXb+5HyRcFn0IQskoVdBAgQRaCdyxvVo5n0D3G8dXliLXYdJs9X
	AaU6s27JV3T/XUzLCk6hgygherKiD0JyLUEaqCf0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018073d544da-aed99c62-4595-40c3-9ebe-948738c62cd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6381d474a54bc5798aaa6707df6918c31a2f39853773d5abe7689524d6ed60d4
Date: Fri, 29 Apr 2022 05:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651210798
