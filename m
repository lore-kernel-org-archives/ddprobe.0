Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4B67E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 11:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648293478;
	h=To:Subject:From:Message-Id:Date;
	bh=AYi6xzyKzno5L6tRFgoqSwaXuMwY8qVlA554Uk4AT5k=;
	b=KfW4pwh1Bfk5VTMz1hBVihZmI/puhdH7gHcqHJGlovxZiHfHUUisPIxPRjklPZep
	d3rSxMUliyYfnwDbjGRze+b09unGDGE+VWYfPiKezSyD3lGh4lgMvTvKvY2umdqnNXa
	nhfk/nQgv0b/eWbAkHB0gnjrOPhA9yX3lpSbjbPg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648293478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AYi6xzyKzno5L6tRFgoqSwaXuMwY8qVlA554Uk4AT5k=;
	b=QMgjAU8MVfEzTF7QyyFLwUGjCY8SZ0RJAsNq/Mdq3hlI1Of3IR0DEEX07FGxppIl
	VB3/NQHV2E3+QMpIElcbaq3cPlvFWjPGD7laJdJdP2OZK6TB4HUDe8Ebgt8dc2lvLu7
	u27DOls3CMTKirt5qf+0pfgTensDiDwhNTg4pjHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc5f27f45-caab723a-a7c6-4d94-98a1-99f8b50ac8ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 367f748b05f8a51cbb20042cd68f23b2b795188a38406712fba69d307633e557
Date: Sat, 26 Mar 2022 11:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648293478
