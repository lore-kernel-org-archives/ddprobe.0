Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C21A7A
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646234484;
	h=To:Subject:From:Message-Id:Date;
	bh=fkk6ZWVqyNGq044oWRmDueVS5P91yJzyzZHtJhNm0V0=;
	b=eBzZRDw+LIMp/iXZYmEO1+5w/3DYCi8CwGnNH8+uJGVRoUDogd3fiNyJn2OCIram
	EwHvJ6/7YXtlG0dGRlN2QjNDYM2M8aNsR+W8VBBJZ9/fiuihIeQMrUX8K7wJAGo/Gv/
	gYTzw0e/LjSXsSsmJ87cUtQnMuRvWM1tYc761iJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646234484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fkk6ZWVqyNGq044oWRmDueVS5P91yJzyzZHtJhNm0V0=;
	b=hhWsWK+HRIzRXPChHKmgMvzxcdhX7h2Y2JwwMuRPOhMOT0YfLyAJcwYaAt6rbOWL
	g8G29zqA0uWnL3BMEloCU6N6wRycfJ5aGBh13EuxBx1ZaMObqrCKwkeHXoZlo6LbxHo
	R0ezcDC4SW7ExC1N9O6EBGcCMbjjNDSeXI52VENY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4b38c017-d0b6b205-d816-4f6b-995f-27af622b8816-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16710219da571c41c3c553578bb536a23f700a1dafd155dbfe3f7ce370f6a77e
Date: Wed, 2 Mar 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646234484
