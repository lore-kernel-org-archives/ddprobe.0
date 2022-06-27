Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94CF181
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656334012;
	h=To:Subject:From:Message-Id:Date;
	bh=U1DFOzzc2hIXVMWtHt12/5/p1gkGhYX/+7hn/9Ud9pw=;
	b=QrbpAWkDHFjdnEKAjgG1LsGEfOV9V562zstoupGN8aV6t6j4I0yP03H/H+4Xdvvm
	YudnDGxf+nk/BkLlDFgckwDa6jHBWdY64UTpUKunxQ+fo5LsUq9XzlpBwW9OSIbO2dP
	G3RIFSRxqboG51rznrq/pU3eh3+W0O3uKyvCmyPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656334012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U1DFOzzc2hIXVMWtHt12/5/p1gkGhYX/+7hn/9Ud9pw=;
	b=eGeCjlNFZDUgPa+m8YeXPsNI9y89onnLM5HG6LBbYdkgBwa1NItJWK1GkSJPu4e6
	FKYqwzQDkEzI7N7XF9mxE5iz/ZTPntCDaDyCVRN3mJLKqm7LYSe3rn9k2l3N8iKH9xU
	phhPz2w7my+YlCwJ54BU9GbXPkt0Q3dnIMIArsvk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a5334f7f-d69f8ad4-6863-4028-9b71-4f7ff1f48115-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 978088fa32f319456d985e1a26446294441aeb5e8d5426edd6081d2606bfb253
Date: Mon, 27 Jun 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656334012
