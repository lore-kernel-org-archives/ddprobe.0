Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D79C7E
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 07:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650093178;
	h=To:Subject:From:Message-Id:Date;
	bh=WMq0HPVnoEDQnchffSDwWCUvGhfD0tXYPzgR84ZH+Xk=;
	b=Ph5flTO27pgF7YPXQpJtBythoZNk/egAfrNHRS708vEMkT4YXItD9+IOy7z4VXaA
	kUlNTF7ov4TErcZ3ssZEQ4Ys4u2IQUs5f+bdg2ObCBW8c6AOeaAhM4DDclmLq4M556Y
	yw2RgZY8yXeWjiX/fNEp9NgzO2fhgRKhQ7zAohPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650093178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WMq0HPVnoEDQnchffSDwWCUvGhfD0tXYPzgR84ZH+Xk=;
	b=L0ZNESPhvxEX3Nj+YF2umXJMGovKO4SreonBKZZy87fsaBdkE/ycswSJ7mqpTrdW
	5TOPjaYl6Q3xHGKAbEC7nfDbE3bgfl+CsW2mwCJINd0KUmaUPVhikRrIOY2wsC/RM0Q
	nTB0I5UrTa0qyw7HSBxL3r7Vs07UU+PIARVJ1Qwo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803137bdfb-4d0775f0-201d-432d-8eda-095eebe2e014-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9171f83da7d2c73d61f23a5ab44561922ad38d5fce62b6d62da63ac8aee7d8a1
Date: Sat, 16 Apr 2022 07:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650093178
