Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB8C7C
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646161884;
	h=To:Subject:From:Message-Id:Date;
	bh=vUq5mgO48b7jzmjPKqZMq/ehWUz9SYdnhJJHzSURI/E=;
	b=UCbS1Urw6F8Es9lPIrsImUki8cC0LtX47gzynITjnmthMGRSviyvpDF2tfh8Hznv
	hiyfM6pkDXBXFc433eKs0cBzITl5mmBn1wT0UcT80P92varYZK3lGdih+dbIBya1u7b
	WZHVHYFa5eHhVA9bRrjB88YYPm6ZHUWyRPCSpQVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646161884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vUq5mgO48b7jzmjPKqZMq/ehWUz9SYdnhJJHzSURI/E=;
	b=e0Q8w/fADz+Qk38rJTIQOrd3bEDIEGRqz/AnrjHciO5rNBKutY7LyqXmhKOtTXp+
	eyqW2ooP0ZJwroqZGvVEbpY8lQyMOnj2Kd3Gikxo3JnZOznd1nihliRgHfDtvZ6qbrw
	qQrqtIYiqTaHRwJiMqL6XSh1YjPdH7GzALitaB8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f46e4f6b1-2fbdee7b-5f13-4bde-bcac-d76e83359a09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d010c2d87b77285a6c466f10c97cd047af211d448c7cdfdcf7b8e7ade96db1f6
Date: Tue, 1 Mar 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646161884
