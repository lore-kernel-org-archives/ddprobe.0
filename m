Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF04A7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 22:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650235438;
	h=To:Subject:From:Message-Id:Date;
	bh=1WgAB1Yfo2GbFImDWJCo95hU39V+IpPc+j7Lqb8wj6I=;
	b=iN3WiBYyptFOCy/tHY2wYdYggBmtdMviu9BdOFFg0NgP5oyMdptvAv5aN8oTFf/6
	PUj1C/R5x2hxuVexg9hZ+IFAv7GZUa4BUF4XFwieosDJb3raeHIAp+m5yWjpR/NnqQJ
	FGMoh1pckRJl8ra5XucPA/D2CgSbLf7vH6/4fy90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650235438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1WgAB1Yfo2GbFImDWJCo95hU39V+IpPc+j7Lqb8wj6I=;
	b=jDI/UX3BakCiBOpNlcbvJGPXEuflemB6/ope7TQX2vj2/9llS94rUxdf8LVr1zyk
	nlhskIJ3XUL7iAGkYaRsBe/atIRviLb+dzfJVcnRD82vpT8/7THtkWS/QsRK0RSh88W
	giHkekY60P4XLGyUd8eD7Q4CORsj/yWfamvNjZbE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018039b274af-71effd34-36b5-4bdd-a22b-106aa5da21aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c914adfb7846e2f55c8e7bc81fd51329f7dc95f952b71d93329f6913733e0b53
Date: Sun, 17 Apr 2022 22:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650235438
