Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4AC2596
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 19:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652557619;
	h=To:Subject:From:Message-Id:Date;
	bh=cPh7SFzIQcEtRtKa5xqFdOwyaTv/ykQNf8N7/GOn7JY=;
	b=I3990MLS9RilxQ76fGbvwNeY/M3HLW1XpljlcBYNkV90UKtIi8PQLjhUIHcsbeh4
	JKOUv6IV54hOkcCmXOFEqVAHLgtKQKZ0XnwJC9PWqVvYGW69qIme6OEW3TtYCb5m+6b
	AqSekf37LL0CqOe+DhcfB7tvUQc2Wp6e8j/1h2A0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652557619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cPh7SFzIQcEtRtKa5xqFdOwyaTv/ykQNf8N7/GOn7JY=;
	b=LTEWWaGIvOH9AMyTrTI0GLtjMQZqTYm2z8vi00y8Xrepot3KJqF97gbaMt5SrnuX
	+Qo5HFo0RuLMvYW/qepPIRbz/SOLa/HguljYym6mek4QCHkfjQ9YGiT4dKDZhYbaR7U
	39og/GWwnBqOG0ZKdLhSf5riByZ5JksOVddnGC6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c41c2067-977b1b7f-e553-4202-b18a-978f7c279ac0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f522ed3863ce5066619fa72f36ac3ca5c6d3c16b76ec9e939d499a33b1b481b
Date: Sat, 14 May 2022 19:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652557619
