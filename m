Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BA6EC4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737786954; cv=none; b=iW6iBBPrRzRzNqu6elndT8QH7RpACc4DOfNTdizwR0oR3k8q7jSb2Vddfnrlcfg+oQcbS0RfMzbGDQXJ3+vzC3tBtaXpDizb2pLCelTfV3PoGMcM/1Xtcz/bhU1Ddq6fX6OHhNV4HdNcjJKSYqd/MM7NtmHwCS1KrgQ6Un6TkXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737786954; c=relaxed/simple;
	bh=gQ8H5k79ekqj4xmeeMjlyshbsrSkV6cojBksYyJo4bY=;
	h=To:Subject:From:Message-Id:Date; b=AWTIOjFYMFftyiAjCJ9PDgZpXHC2qNtXYk0nUL1xwcP3yS1w1mbZ07ZDA640JkvT/N14l1vlpbavjJHKhm2Jrpfu/N172+qNMK8/KuipuV8/f1+5EqI8xBWADNZbjC0gt1hewT6Rhg8zwtHuXD2/ts3uLyUqCTgyBqMsdgMNyyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMC48mDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMC48mDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1BDC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737786953;
	bh=gQ8H5k79ekqj4xmeeMjlyshbsrSkV6cojBksYyJo4bY=;
	h=To:Subject:From:Date:From;
	b=QMC48mDTpIu5hxe4sYkDooUTVexkK+PYDoBVAanjGi3uIKIwhDe1VeyzF6T/kLJ/w
	 5o+oZPXpMfmIntXNGKLMTagqTkmFoybtah9OPYLWOrso03dwO/POwbztY6NlrwzSsf
	 jqdnwC9YU6r24TBhKO0obHRVPjN0XAe8h2/TW5CVON+RWJNDjagTvqNppI9FmzgQY0
	 cEgfh3aqSuToZYbbpsul6udelz+MV4oE1AmfWMHl+he8xjHfMRab9TIcZLDAjvmE+s
	 l5q/twJMDwh4lby53zzFP76VtHyy5nfDbzUTBFQF0vv0ZykZzXA1jFk8ZnGkU+L1QY
	 x2cuLB5fO2rTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93870C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173778695359.10245.12946257938695852257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031b39d4d35bd68328098374140e0f2f36ef3258bbda01ccc7bbec8ad5e4a3a7
Date: Sat, 25 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737786953
