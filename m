Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320072CA2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 12:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656334612;
	h=To:Subject:From:Message-Id:Date;
	bh=w1BebtvBnti3JpZOrD4ya4BSctqnLhVWfs1S+5u9eUc=;
	b=jh9Bc8eWf4bFFADo8kadD7PTkZIMcOfLYDNUiNIkr2Ta/hDeNrBpwXO3SOLx9MYJ
	zDbpUUNepypybM+/BwArFqWRn/6C1elrEDm3amvcah4I5qRlutQMZqNskH/pgK1N9hV
	QzKEuAUas2qVlgRAXW+bAadVK27tKQd6vls3M2SI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656334612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w1BebtvBnti3JpZOrD4ya4BSctqnLhVWfs1S+5u9eUc=;
	b=Le0NV/77EIwaSOxcTFmKrPDP516O4zMOG9my6hTcyt3YG1LHC4OkvrQ5NLzFStQM
	/fWyge/LEbthfaQYBDBYlszzZdnylkpvkH1Z3/XcGxjcVcYZbmoEQpkQYvxyIVU6cL0
	47ncCCFAy8bnnlWCLbvL6wIg7ly5K3OdWONS5Ndc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a53c774f-d8b2f92b-8286-4c59-a23c-9fa6784f59cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc8ade14b3cba809286e961f278966e6f5f0192bc5047a9ca0c28fe8d0434a96
Date: Mon, 27 Jun 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656334612
