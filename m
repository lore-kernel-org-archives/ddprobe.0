Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5E467A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647427285;
	h=To:Subject:From:Message-Id:Date;
	bh=LaARKrIkb56q2/NZvv4EQmgOXMZfPNEk8eZs3giEwTQ=;
	b=N9UzB2IAobCDj4r6Zssa6pCbYbyJMQk64sSCA6LycmP3Pm3sDKlLzlGETKxN4PI/
	zLdFI9y1TJN7J4DtwVB4Mb5L5EvMsALjUElieIL9JC7BuF3dIs176+ntv19+tma4WyR
	xcqDfGXwK3PrKjSPyiS4hmkbynDXMRbhbwNo2Mvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647427285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LaARKrIkb56q2/NZvv4EQmgOXMZfPNEk8eZs3giEwTQ=;
	b=TgK50Nq4UWC7jmzItolcyClFBbSDkiYIUFjvEHauXkWb86oY3xuQn1ACXk1OVLe8
	V7M3ajiEFkzwdLGw+/g1tBOgC41wAPOCxQzpYPsuQepCXWzcB3HmurKwePt6aWVP5uq
	/Rd8va/bBa5elH4SFm7J84aN1zZvB4Ug0K3HYPrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92516f11-696a3835-fae8-4e71-bf9a-d2b04eb5fcc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8bc6cdb4fbe043152bfc692d9fad0092ee86e02b7932118f0f90adc7f18c03b
Date: Wed, 16 Mar 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647427284
