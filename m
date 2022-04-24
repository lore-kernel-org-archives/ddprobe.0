Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A4417F5
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 07:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650786778;
	h=To:Subject:From:Message-Id:Date;
	bh=sR9iB7Xg4lWxfmU5CTBR7QpORhCo2p+fMP/tuSP42xA=;
	b=SxMRUohqpBNVjwWkhQUwIuJgN4Ydx54vejDQaF9T2iPxWuqtWL7km0ucGEmLrvwc
	+Bc27SxvIiYmgeLcHdJnWMZPs3J4hdgbZTqlQ63JhUQbEVqyv4b1hjHxDihDh96LTWi
	oKAiF23RuN7p4gnSSsLerDD/NPSlE4X9qw8m1o5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650786778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sR9iB7Xg4lWxfmU5CTBR7QpORhCo2p+fMP/tuSP42xA=;
	b=CP8pCO0dGCjesj6o35wctzdsEot5HKlF8wgAGScARZ0Dv4C6J39HfsYRc8XqFKet
	xfNcuDlZdwm63usebxrWgVNRO9Qmy/c87det5d54wLmrdtKduEPzwhqcVH8Fk56Oj9o
	yS7+JoI4jFoH7/s4WVIBvjTUZPbS+Nxmp2+hNSss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805a8f3c7b-3e00b95a-f5c3-4427-8cec-3d4a02918aa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5129398779e43be9b704c4d816481a7bb1711381eea4597e697c19faf7696411
Date: Sun, 24 Apr 2022 07:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650786778
