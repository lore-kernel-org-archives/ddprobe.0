Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 812524292
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646613084;
	h=To:Subject:From:Message-Id:Date;
	bh=ptl8lunm14cQRW/qVbq/d2pcuGnNOBeX+EYckvxjILw=;
	b=aJOiv9FmfzRd2B2qoF+bYEsbUFfvZbu7/x+ACMo5DkMXQvp97ggr1Uwzy6wyuI0E
	zAedJK07CK5rbIIE7BqCGFz9BV/svKQY2Q1wf9fg2oJUiIvivZaz6SxsR16yNa700DO
	wZNVEVIlhVJiTX+PFNPXoeG+KPk/o6qMO3wUGdAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646613084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ptl8lunm14cQRW/qVbq/d2pcuGnNOBeX+EYckvxjILw=;
	b=jVOL9L422/R35thCoqWyx9Ir0Tri0CX3bxFzlqsGEoW4eoIYRyifpWbbpPiW6B4/
	9OHD3pYX3IrCo+XksC5G4y4IAD+BsT/v7KnzHq9EVGl/zUxhw0rEUWdHZGruY6hpN5J
	ZAqs6oO6rviDsOvsxX+7Df8bAvdBTT+cjpNrDiCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f61c9ba6d-7ca204c9-1395-4dde-9767-a13d0f60250a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2968ea959086f529c5bd11149faa7674288dd9166bc11ec0642c4dc3dc06ee3
Date: Mon, 7 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646613084
