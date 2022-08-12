Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E39F2F28
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660342252;
	h=To:Subject:From:Message-Id:Date;
	bh=+/rTrx+Qjzul0jqMi4HWg5h9yhxjzOm+LAz8ohX4tcQ=;
	b=HP5taq2x2WHkZXX/68yccN0kLFnjZwBq1IFnpRLXi7fM0znqWruZAN7vEhawpvbi
	Q9GI5ztT4FUFC4coeGI6BbCYuhqzZRBrZwng7fSgDjVMR2v7nlyh5py8wYRGCoZ3ND/
	+lgNrmQHuxBUfjd7HIDJmBPb4hplj2/X7gsik9Jk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660342252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+/rTrx+Qjzul0jqMi4HWg5h9yhxjzOm+LAz8ohX4tcQ=;
	b=Sva3Koc7R56x4yq8ZG9hAg26/vE3/WqnH1ylkEc5CAd+ajdTPWLyYpP7JFpQia5A
	4ivtOjHuvGAHEPkH85NpG9giv8t69RUXiCYSYNBw/PZ2pMuZ5T5OrJZCHYcK+3yVYFe
	TxPUZPLUrfJSgWkK25+xghyqX+RtpOzFELDcl2DY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182941c3421-d9a71d93-7821-4578-8699-daec68e6fecc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4bf89519a692c98bdfb76edf3e27acb090a346ef38480724c9c95fdc707fcce
Date: Fri, 12 Aug 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660342252
