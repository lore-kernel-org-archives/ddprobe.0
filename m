Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C2A63E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647883585;
	h=To:Subject:From:Message-Id:Date;
	bh=KCEHEjWZvn87vEVD1iaSgAfd44ljLftOqSdM3oR8VVo=;
	b=hc0k1VUf+H8Kre0lNNka2nEK9U+KfUjHbdnM+2EvOxh+fCOpnNod1FL6MimoENXP
	89ZpFK3nwF8CWqZniNTKAxpgHtDUW3hzQPHBgN0aU3wYZDjJp6jDL5689h0i8dkgxMy
	c2CMgHYF5Vz6mx1os/FhvGKnX/1vEPOK6OOPT4Vc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647883584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KCEHEjWZvn87vEVD1iaSgAfd44ljLftOqSdM3oR8VVo=;
	b=Nc5+X+47Q994V9ZAgG7XIXMp8tkwRsTa+HF9EE/3TdViRMKTmWsP85Q9vxfKVSNv
	/eij5FtHksSzRenvdb4+dNOCxPG8NxTITBFrA6aaz7gQMAajKl6l0wq7Yobo6iCA+v7
	LPUK65vDRYVBwkpCFc3WmTbkoJmir8HEqEr4no28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad840517-5e2d2c2c-e631-455f-855f-37b22fd21559-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93852d017b90e3bc63424c587d3a7a0c1cd0c9d3de1975a261696c0bfcd48d18
Date: Mon, 21 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647883584
