Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6F47B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645904485;
	h=To:Subject:From:Message-Id:Date;
	bh=jdCmtVWvqZil2R5rvO78Yq4F7OzvtuoQraSdQ70CCJ0=;
	b=DB9Cp5LkMgH59MO0C0aDADuuk9bN0M79xCdoZEuNiF/j/0VUagsgzf8YQAOQzps0
	1FqErPmEfMJPwtqoUA2cWQSXnpLIvjodyuyg2N7VyvDFiRxhYUXQUDitoup0nFOv5H7
	3xESzLU/729sLLLRaRexG62r/XcEuNDuT8+2SXQM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645904485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jdCmtVWvqZil2R5rvO78Yq4F7OzvtuoQraSdQ70CCJ0=;
	b=WacpkN/qBj8IlnSCb1sjWshkCVACNOZse/IL0046iOeFrxmPk0G5PJ12ON5mWJJm
	iwY1WUhjJDQ/MLFIUlSrI936TqWccdeJ+JvxKPtVwNPjiyte5aJpoPUTzSiSIwJFI3V
	lGVKzQNJ02Jbj2xKkE/aO7yqiN1rhI4V3S5kLIxc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f378d59d1-f2435cb8-8aed-45ce-a36c-721ff2ed9ab3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 020e682c2ec7a07bb60d4b83fc23b9cc7bff18fe2bf48a146e7a5054bdd509dd
Date: Sat, 26 Feb 2022 19:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645904484
