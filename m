Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBEBA3D67
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645892484;
	h=To:Subject:From:Message-Id:Date;
	bh=UtpHPgIfZSsuy9FjFf256aeim27fdir1gAJOL7RLELk=;
	b=G6TMWVLvqYwmey925AOEpdU/XQ+W8Wt7FKoLCoYoUSprjvRMuhCCu3GdRXMhDXEm
	wMILO3qZrsPBHxAHjD2SnunrCYz1XoU86eZAO8p7z8qnJdWhz6ghD//4SnZArWya3XL
	twovXwTSV2NZ+eSwNoKPhjrq2hH6FC72EjwPppKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645892484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UtpHPgIfZSsuy9FjFf256aeim27fdir1gAJOL7RLELk=;
	b=RUUSiXxxBzhmrnXC/4j94EQ3pFhNWTl48RMOZ10bCswTNF88e5C2Ho0jZS3ov461
	qokqq9jUob7o717vlnMmvviKeCPnt/XwEOlLs1hq4rZzoNsdSf7oT1zhHdYb/QoIeR4
	dWg/77gqL3wxeuLwB0WAD4C3NXPzwzE5257yHD4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f36d63e70-78248472-11e4-45e7-9415-29921cec145a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ecb76f0be5e669a620076d7cc6564d1edecdec53c327ba0fa67dc7d18234d1e
Date: Sat, 26 Feb 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645892484
