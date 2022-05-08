Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19F17F
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 00:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651968958;
	h=To:Subject:From:Message-Id:Date;
	bh=SnEBFxDq8/nKadeUzgc/U+CSfiTVdnHNbFlhymuy93Q=;
	b=DTxf3D0jBnUSQRI5ryp+YQ31gIBUxnD59pbWM9Rg7jtKtbjD2J4ULfh0K2MrsVL6
	0QtYQ7ZtN9RaZiXKGoqkvkkodg/49qdcx4gMOIJ+AcdmTX2ZCc7NiRSBpPNLc/qCai/
	UwzOXN8AXhfS7H5BaReWlFOW6yMP+zK2cHnMiXas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651968958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SnEBFxDq8/nKadeUzgc/U+CSfiTVdnHNbFlhymuy93Q=;
	b=YEsCecke768Hh6GfQ++c8Gh59gDQdGiuqCkSJ32RBnvOf/CJ/jzp+lSfEvin+123
	WxaDmmuL4KxkBO3Fv7ljT8vHzuC7uhzrhKo+iGF9k3pBtkzkP17fIeue23NZOVV1LFg
	DwtGYrtDAVS4crCr4YfUx7CXQh3Z3eX54xT/KgOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a105df1d-4206ac76-785d-46ca-83fe-db1e06353bba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a544dc72f6d4f7cad1e074ff828abf620df43e89215326491730d199c601aaf
Date: Sun, 8 May 2022 00:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651968958
