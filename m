Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F504352
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 14:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647526585;
	h=To:Subject:From:Message-Id:Date;
	bh=YwSIoz5GSLB207nS3yHr8XrZSb80LZrrMaaCTwx6W30=;
	b=duMzvtGCYyJfr7YWhCLWwXKJgw+RpsPLOmChIWqT84xWADWXDE2Co249hsAE/ZEW
	IaiIYBADFfs3qXolIcODTgP6Nxaay8fN8AAQd14C2dGxqbzvfylfNaAtXrvknXFesdJ
	Kt/5CXbhGYmtal3gEob/6pZgrRZtrh6/F99Egpqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647526585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YwSIoz5GSLB207nS3yHr8XrZSb80LZrrMaaCTwx6W30=;
	b=X3O3cdcS0+7TNkCswHGPHuQ7WUXLwTx4a6MvLu74GH8X8KVFRxr+vsVieLqPNK2L
	qr/7NwH7UjlRzklz0I+Kp3btk/WF4plvWC5x5Mi3ZtRKMMYArOoK5+BYczeSfecFgws
	ZklU2e2ptd+rHamH/Swv5ZEsynLI790laQkHBJ5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f983ca192-30abec11-485d-4ae2-bfeb-fff0dc838064-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25f55566c7870863379bc138c85dec17b2b5f08fddee711c492a49c3966f0516
Date: Thu, 17 Mar 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647526584
