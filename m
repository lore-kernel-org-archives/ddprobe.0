Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD632CA5
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 21:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657231012;
	h=To:Subject:From:Message-Id:Date;
	bh=ALBSimCe0OpCeevMXX/7j1vvdriLbDcvrNEp4WyclOE=;
	b=CZ0N6DylIj/1g+0PW4VJl3Az/aOXWR7MI9lar9hU2kHCm5GaCROFtgWnsVUVa9D9
	AKFMjhTuYNU7CLN5hFbIfeXUV56c+UgXr/z2eXpoVmT7kYCv6GBt8PU8NQQhwCt7xqQ
	2MwJUWD6hsef51tWuVu9hvzOaRSd/NWxnmyVlums=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657231012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ALBSimCe0OpCeevMXX/7j1vvdriLbDcvrNEp4WyclOE=;
	b=R0LpisIQoLVcc5U/IqY/Xx7s2EFJlpJ+HjawJKk57HYFzGrSJhaUrlTBwvL0YSEl
	iW3kSzIZ8rgaXZW0roJMc0oRqbZZAb+4bSLTZNbGqma0YgNz2WJpcRF5dqBrCSr1lnM
	kkt+hSM9uEjSmj8GyoknOfoo2ypr+w28ecIC3rvo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181daaa71fd-6bc9fe01-1346-4e68-bb0e-e37eaf9a5248-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f22c92cdc728eb0709924a75e18a857824c672e5cb55a528e0c1cafa9f0307a3
Date: Thu, 7 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657231012
