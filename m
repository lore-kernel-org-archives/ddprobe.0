Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C748513D
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645264284;
	h=To:Subject:From:Message-Id:Date;
	bh=lPpgxIs5hjvdGYyawq6lu/YmqgQyFMt1AMha+NOdwNs=;
	b=Kechsz3QljAATtLjJxg1tKBrcwTMw6tsBpegP2FWsJR3sc+2QHZvtHnBDS48oGXh
	HZTW3OQ0l7s5ojyw8vcfH7U4UEaih1cEHVWETFaOk0AjQGowAXup0gGmBzW9OvuklQ8
	ZGUU8SjbJI7145MdXgkXPzctw/HOqVD73e1+Zb00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645264284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lPpgxIs5hjvdGYyawq6lu/YmqgQyFMt1AMha+NOdwNs=;
	b=XxGxq/Ah2+Z56/oereR0TL47F23fu8I5A6QiNq65kLFiU/mAiE1UpRODKrWgjzrE
	Anb8HhFtbp4hkvenRQc5SS/sSmTJyYgx27MD9Wqw3+bGXCZAcgTPO6E/UJNHAsowRGn
	RXyU753NtjuARbAUei9GNqOhHhtdk3cBC6rf6f18=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1164acaf-e6fbfdd4-a276-4348-8f7c-233416d1c9f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8820ea85b48444f5d578873b5d2008289dc9c56473903933194e849223bd37ac
Date: Sat, 19 Feb 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645264284
