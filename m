Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139497A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 01:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650765538;
	h=To:Subject:From:Message-Id:Date;
	bh=K4Sfp0rEMOD6I6TYUb2yyNtJpjjLC+YJaQtfVpYn0cs=;
	b=T+SuaG8YfoK3qgdcXX9vYRV+beed0GmWM63TwBHnjkKsKkDKJEogZ+fdPgtI79DJ
	r5ESi4ukIyeGg27GJvGKUrDdr2aIhe6byygmhEWKwndC341rI/h/ejf29orY+bh41yn
	lDxrf1e3wa10uga7CWfg5DTE2KDuyFZe1rSZWL8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650765538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K4Sfp0rEMOD6I6TYUb2yyNtJpjjLC+YJaQtfVpYn0cs=;
	b=cQTU/b1dtHZfdMocct1eL4nCKmGQgaIdIwrnNNks7yRW261XpNiy3U/iJrHygYp+
	tZeN0PVbYP3kU3dVvMd0ingVGFCj2Y8JhSSHVzq1VV6G8uX+/iMXCvSILwdGLV8in2k
	TUrgfDM+3LJbmAE1y12REiVU5ZQMOXJEZFVWhHcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180594b23d3-a3b65ee4-efd6-4d12-b225-27c18b3569ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cb8ff6c122f3ccb77b78bb0111a2bf6582b880e351dcd6be747b3d1e527bb20
Date: Sun, 24 Apr 2022 01:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650765538
