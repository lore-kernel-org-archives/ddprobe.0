Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDEC046AA
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 10:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648981318;
	h=To:Subject:From:Message-Id:Date;
	bh=DhjaXyVZt/x/AYSTTw31NfJI8i8iC5yTTxLmnd0iyjU=;
	b=H/+lT96k90STm5NlJW0DNf0MMYi6+XpJc9JON539vmTrzN5bUKKUtVun0SK/mo2M
	rTLLdf9l904SjzS+RujdedDHho9tLJbIfjkMKUyqsnTIO4q+l+wN63SeV74xbnBSdfF
	j7E9yhTmYC8lpP0AYPgzS3tx2Kk9GlD88PDaIa0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648981318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DhjaXyVZt/x/AYSTTw31NfJI8i8iC5yTTxLmnd0iyjU=;
	b=Sv4EWKrs43g3ty+jo766W6bMHDZ6kNxEU5UkaRcFgn3CK3AnhtXCCb+gPb5yhJCY
	d2/SpQp2HOf5xnQciX+FXz+bW9oHY+5hMPzHhd79T8XuietuzPSn8y8JFVNzzAYyoDv
	Fq0cVu4MKiM0ayYWq3a2TKdSeP6/nIf5MNn6QoqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feef21a73-121998b3-0d0d-46f5-8fac-2256a58b6eaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5531a513afa1cf52af14d66095411e5dbaea3ce37639f4c5ff0f3bf2efa9e1a
Date: Sun, 3 Apr 2022 10:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648981318
