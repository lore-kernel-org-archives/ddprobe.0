Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A35787A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646875585;
	h=To:Subject:From:Message-Id:Date;
	bh=UcHzkOy4aI6VfA4ty676e4wGvcXJwh4GxDcJdv700wE=;
	b=de2IuqjE8XUJENnYdflJui1N/EeH+uTt/xHr749golp0hWF6N/w1FBCGjIW9NRt0
	q+l2+HEKQObjiRoRpDRwJlslutD4yeIxzAEDSAMjWm/Xz1FCtueVBP2bUuOzF8vIwwi
	n9elposNXRShKESXXeRARWjouXn7F0jEDNdRvSzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646875585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UcHzkOy4aI6VfA4ty676e4wGvcXJwh4GxDcJdv700wE=;
	b=Xucz8w+7HhHTqXiVLHXD5rM1iuXgKkk/sOcD8sK/6ppz4RDnWc03T+q1wUGev+v6
	mAES/9XFmwwedfkEYpZX0/d2C8mn/ZEnw36q3n/vvWZqjoK41wVDM1LgU3W+jVOZLhq
	pzwIM13AwLvH3uF7vfkvfZTzMjsfTfKMjwrGupho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f716f2919-90325c01-9d0f-4b6c-a347-c657c25c3f6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c033c76cb2071b572d0eb4331d81fa84bbe022bbebda1f61a6e6e8e76b45298f
Date: Thu, 10 Mar 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646875584
