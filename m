Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B071866
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 12:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652875859;
	h=To:Subject:From:Message-Id:Date;
	bh=KQKMtzLYfN4h4a/ApKqhLcWp8JP4c+rnbwBoLZOaPk0=;
	b=TpjGueOf40KtY2Pdw1wIf+flBL2lEbbvhuh2nrojfp+rWTTt960x4tWs3ZUtPudA
	6akYUnC+GcGcO3xxeT3kQYM3PB63QejmNVzl7SmjkT8/ENZY16GPJQdrl5gsO560Bb/
	ku3QXv526FGP1l1/meo4/is1LXgorCEkXt1PqXAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652875859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KQKMtzLYfN4h4a/ApKqhLcWp8JP4c+rnbwBoLZOaPk0=;
	b=Zd1KS/x4N6q/34rddvK+KcpwrRd83f8bG0JLsdPHxdyLLsaTNM+l9VrJ1p1Ipg9o
	U6oZNirrLnkQGHtFZ7DgQNiFQZ6Hav1vmxdsfMK25+ueneJf1g/WIxi09HxmM73n7az
	m936SKLA6RRqjj95tz62byG8B/SBzDvHdQa8zCjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d7141536-76bd488d-7981-4546-8e0e-e1afb5a56f19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec313fd05410621b99a8baef556fd913d418679d73fcf0ded2a757903d21e825
Date: Wed, 18 May 2022 12:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652875859
