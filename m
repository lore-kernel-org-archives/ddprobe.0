Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707B4367F
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645843284;
	h=To:Subject:From:Message-Id:Date;
	bh=iHC2BzeT1+W1NyEPaXbuTS9esg/gjvySaafA6u3D4kg=;
	b=joZ2JO4AUL4t0SExivHwcF8ePmyHQUsbXCFAqD00lHyG3yBNnoETZKJLiM+k+sKl
	XSnm/135SYRDQJKJNfathdug9W5jd8xiVpu00PYZ3iufBwIWqaXSFhgN/ts1TTzmUNp
	QLZqR2xmffWB5fVJ9gzHUYBY8IU5LXwW15bdQ20c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645843284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iHC2BzeT1+W1NyEPaXbuTS9esg/gjvySaafA6u3D4kg=;
	b=leBuYLkKqdZYQsFRGPYvjd5fhMEtTCgK5wpNYkwRn3pw6KOP5DUudq1CP2EzORUV
	RJ9hNUYHLtPtow4H520BNxieiPXRXKuJxrCNAzo29Hdc7CMnSoEQuxbKy3M+SQta67R
	J6Eb0aVMWoGAZn1IHbzPCdyHtDcsO3ezdhUmyn1w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33e78364-810a3557-8559-4ae3-9fd2-2054862d1f92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bbe91db766f16edfc958cf98f8d627941dd0e01345542867699b91b0a272e39
Date: Sat, 26 Feb 2022 02:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645843284
