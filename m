Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F572564
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646200285;
	h=To:Subject:From:Message-Id:Date;
	bh=5k+xKhJtezLQ5KPgZjKOplgnrNdzZvwJTy+gjgt0ATQ=;
	b=Bye8PRB5OPNHO2jMMejO+12j2zZi07g9/4Y1zw4EsMxyvyU9Q1cx9YF8FTwBkc6E
	TeFFliAMaY83K4zhtVsfOwYGHBQ+iLz4PwfOyD5g6c9ZCAPUpVWS+KpIZ8kCxyu9e/k
	VeYat717BQXjN5rZqIOdj3K7LL4z4caDoQ0qnmBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646200285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5k+xKhJtezLQ5KPgZjKOplgnrNdzZvwJTy+gjgt0ATQ=;
	b=A3ZZj0WY+eoZSybrH41sTZE5SQIO+A2a9JOU66iPDSxe1LHrTf+eD4vWezNCRZQC
	ohYD5HRUOPS0soOx8tkmZ+Pw8XQXo3EC5flmgvKS4YfUBSLX/wta1fnh7dRB0BujVbp
	KWGQqJEoZ9qQN8RJxWa+SrE1Z10WyAvUlelbhDLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f492ee67c-7da4870e-f6a7-40bf-8584-4c74cb78f2f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f16658df1fc0da29b5ba9e0f7d9dc3975248db56c50af2bbc6d7c4a2716837d
Date: Wed, 2 Mar 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646200284
