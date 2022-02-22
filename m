Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A08492F4E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645537585;
	h=To:Subject:From:Message-Id:Date;
	bh=J79oX/h7mvUzPKG3uwVD3uUaVQa4Q8iEKAUGxSZrgU0=;
	b=J0Fa1yJTiD4C8iL37P+vdNb95jbreJhRMoW8mQl05jJn1HNhWglMZnvbAzOxqm6o
	i0KjxSiqlzxWQ/IHgGolAhyeJfZAfrl3Jso6oak14LREkuz15g60mQ+lHuHLzjC1ppw
	e37hq+OvzPCk0TlH0sykT8A7BNgmq8MpopH+35is=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645537585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J79oX/h7mvUzPKG3uwVD3uUaVQa4Q8iEKAUGxSZrgU0=;
	b=BhfBxv3wyk5WTA/8/SE+7lXORvSChNS1h7gJD1cKKGHF5dWtUJN8S0Gh+I7Xpdf/
	p+lNKjEHlWBAqEY766R/jSWFf/+4FwZMJCuAGT0C0t7fWDPjQ2fxKaXL+1p/W/59Kbn
	2IOSUNxqXLyQzI4CDNgYaad/DUtc45EyVN6Y//MI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21aee69a-d900e4ca-e79d-4a3e-9bfe-ddb620f924b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20a8672077d84d55d01c3f66498a74bc5b0e602d9188cfdcde5bf1cb471d9093
Date: Tue, 22 Feb 2022 13:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645537584
