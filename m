Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1AEC17C0
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 23:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646867185;
	h=To:Subject:From:Message-Id:Date;
	bh=TvbS8mRPaM3YTy9X64Fcwpux1foX9LKmwySVqWJUILw=;
	b=T0YyJRRKI3z5QDEF9Xa7QarpLDBgqrlmQjfOAJ7XH3Nqru9qs6IDBGT6NQppIK5F
	K9LUpAK66k6cATlsx9MDB6ljivnPeuqZubog+jq6tPZiISNv3EyojBkv+owc8f4d2CJ
	9HSxXFjLy3tdZiV7CyLahXESlCLfx0UrePNryLFg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646867185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TvbS8mRPaM3YTy9X64Fcwpux1foX9LKmwySVqWJUILw=;
	b=M3pw3pTPKexCy60oVJ7Hrj4SafkjoY43L2GB21TUTWgv1uQlLfkWXHm9S3Cb7JpF
	kl+BfWdHLqbXVYu0OXeqOxU43GsNeOSRUG7PsGd2VKJVnc165cUOQQG02fvVRqOd83q
	ln+r+3xpeJgq1a5eGy6aZZI95W87eksn0MWlnIdI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f70eefc75-c41b0290-30e0-47aa-a5a1-60d4440fdc9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7af952434cb6e210dbfd48ed7cefdb651d7d06227cb5136e35ef01326d1b13ef
Date: Wed, 9 Mar 2022 23:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646867184
