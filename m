Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CAA15A0
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647563184;
	h=To:Subject:From:Message-Id:Date;
	bh=VUpQ+H+n6J9NCyh8HpHQjHaFr48npgwHZ7bJCHPE444=;
	b=g2Sp7MGH9avDW0BocKBM57UDKhlwBd5qoMaXeaNir6EvedvMGbY6BBXTNB7AMCFr
	crcP1qmDLuiY35S1UrRNDI6+J9EKp7vLGwQQA3PkGchNwCoVMktI3liuQcyRN1fqwr6
	uxUDbANQp6sCyLfEhsXfR7rOwMCvBVj4yNCJ20Bg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647563184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VUpQ+H+n6J9NCyh8HpHQjHaFr48npgwHZ7bJCHPE444=;
	b=dtjRqvenO5nEdYFtb6ULK+CppCtOSAc3YX41EVhG3VKW7XSCN/Bf0dnk0RQj0wNJ
	xCaZpMbb8p49/PKWC+RT5Ux2+gZjIVAT83xU1AflhbO0z90dZmxzj1bN0uqMnu+gQOd
	u/uyG3DhT6xWZuqiZkT0MzygAnCPz7rzlSROa+FY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a6b1a6a-4b17b76e-b04d-4dd2-ba9a-bcffc92797a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b918e8bbca855ddc43ade699be410c96d3ce599bdb2f9256d9d5a38171871eb
Date: Fri, 18 Mar 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647563184
