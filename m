Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DB27C
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 09:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649151598;
	h=To:Subject:From:Message-Id:Date;
	bh=yn/DcPo2gi3ef989COPnZco+WyFctGXFRod2VoKFIdI=;
	b=bEXzPwAWyVsAip8TZHAev/31kOgbU3eXdom7QKS3jlZzKk9Fn8WKKp6hX/7ns89m
	lROORRbIakfxIuuSiSu+AlNtog2w+bFWgRmnJED12i6MV/XWWbZTdNBXyCVKBskSC4u
	6F2k5HRgiF26GGt5sQze+60NAPtFYuxvHSOYSG4M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649151598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yn/DcPo2gi3ef989COPnZco+WyFctGXFRod2VoKFIdI=;
	b=di60o4HjOUCzvKJUsqze1gci2L1BixT5K8kO2pDZJANDosl6+O1nWfUAsgUBgUxc
	OWtXlFEtRzMZpMd7UJdq/WPg/4HmQMjmk1nfshUvmEik7hqPbEsTbgh3QfQEJesj05C
	wYvoHmBInC4Er+TbZbZN2+ARn+uSydtTNMFSxOrc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff9185ecf-878c1f19-b00a-49ce-b726-ca7bc03738f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 759c4e384b60c2500aec6e2f20d63c74106e86f6cc5a7a2b53f0c070f9bb6ead
Date: Tue, 5 Apr 2022 09:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649151598
