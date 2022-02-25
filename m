Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9796723A1
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645797984;
	h=To:Subject:From:Message-Id:Date;
	bh=A8Z66ZmwSMTd6qR30JJfq2XFLpowmoLZgsBdOCSbQgk=;
	b=Cbkro3qb9gk7tjMgMVtU7NoVIT0ZMb+x90tLp/rXUQ7S1rG82sbmYURrznNb9Kgj
	bbZbx9W1gXjSfbPzhB+Z9AETYYMhQE8LII1XqMt9E+6RGlLRemmXQfIO1SDcrzqkk6S
	NENqQUlCcvBjZ27sESYTkBVfS1oUyh/FURzxzTTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645797984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A8Z66ZmwSMTd6qR30JJfq2XFLpowmoLZgsBdOCSbQgk=;
	b=YEzD6lHLgeAgYzcVyzGvux82Sj8LDmMDieqFVoG82FwHv/f7g2AVqErZP50TSfss
	D5SdA/o5dFxaBU4f+XRNgvqdwD1EdX3sYQRxfVRfnb/ux8v8WnMPOLjJ/D4dyJgOSRg
	hRjOjg95+gQx4dt5lGPy0UQunflKdbC7UqjEUi24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31344a02-a5c218e0-a35b-4322-923d-72454c8ddd41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3569e662e420db6cf0446ff23d5e447c5031b37f59d52fd537ecdd5dc5edd8f2
Date: Fri, 25 Feb 2022 14:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645797984
