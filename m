Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB5418D
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 00:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649205058;
	h=To:Subject:From:Message-Id:Date;
	bh=nrLKUs1jv5zQ3MyKAhnt+WtCw5SL03eXQfQctlzkg80=;
	b=gQ0gYAQ1LEhEKBjh65fdmmHV3BZ069yb49EWxlSGTANzz4CbQHZhNUwxTvXQ55/t
	vMWivWhmGas5CKFwB2n+u6Sbdas8H8d8kIasVNLdd+TtfnuWCDLtzEqn1DbjDEjTDcY
	OOdqffAaPujDBeBjf/rExQJr63KI7bRDQBIsiYIs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649205058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nrLKUs1jv5zQ3MyKAhnt+WtCw5SL03eXQfQctlzkg80=;
	b=YBAhiYgHmtvE4btmDsnGofuVgpSvHxKkI7UiYU00hHubpA+gMDIKGXPIJCNKtmfz
	7fL4IawE7jTr5hoyvZiM2Oaba7llz4a6vIfVV9GmOd9MTKdczr4jOmXu+L/7BSw/wUM
	xY7zkE7GCN9iHJU4aj1CledhlpKiAsBAaIjDWcCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffc481afd-46e2d8d2-a3c5-4700-b97f-43a69d26efe9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aed48273e3ecfdde62dd6e8cd8e4f055ae911fc54cac2cb5df317c7f7b55e23f
Date: Wed, 6 Apr 2022 00:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649205058
