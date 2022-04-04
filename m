Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7F27A
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 08:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649059379;
	h=To:Subject:From:Message-Id:Date;
	bh=LmyV9TSApqWMLw92zTtk0wPf7mJbtTftVZcIo344gEs=;
	b=ILjok0/sx9JzjaLpbkHM0rGpc9snn4O7anXMhGR5Ac2VNIWl9i80cbznELg3+0jX
	XDErUluPr+ry0E/2tvueqzkkyCUYohnaOdNmIB3SEV7jYABQ52/7Dfdw/pAXhqVBRkg
	du/wZNj08K1tfYFXmjnWqaTS3NcNWPHCbUVl+0BA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649059379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LmyV9TSApqWMLw92zTtk0wPf7mJbtTftVZcIo344gEs=;
	b=K0+LFviWa5GSVSJKOyZ8v9eu8yaIN+uGJITujtreSVrQWYd1hL93t2L8RLT6yEJk
	ezmqDGGmsKQTIx5QkEXaeAJjRem483aAaL1tlUsk6LNg2UxusyWoDlR8lxI6qotA76f
	NM3+n00OxMyRvak0dD7aaa2pI6rapmyMOSDLGXpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff3993456-90d22cbe-f2ac-49e0-89c4-845fad554c96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f413741197060d2371e61b68c99466816e3d74382b190c11b72979549c8a8a70
Date: Mon, 4 Apr 2022 08:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649059378
