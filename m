Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C521185D
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 13:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653658079;
	h=To:Subject:From:Message-Id:Date;
	bh=66Fjkhszqli8A5CwQNSfiozoE49azbVAz20lSrL4HBU=;
	b=SrBhYTtDI/pYlSl7HuzWN0RutSv806Q8zonR77ozkCB0qI85RZN6p/gf8gc6op9R
	LTWCsCsz3homo/d/Aky8f4e/e2V4y22QKWhQ8XhyTUQ4S2wpch6FTpsg08q0peDDEHp
	OEmLYidlMAdT+1U3P7geBI2EGhzdZH2XZ7ihW/Eg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653658079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=66Fjkhszqli8A5CwQNSfiozoE49azbVAz20lSrL4HBU=;
	b=FLJ3B1ZfWDpQK4dyPpzAntNFaCVJ8Xotw8RrkfHOvIuBAl2Q1r617td5OZ63KegD
	ewlTbcvzO+h8aGsPSzKcU62OTvNiPNr8/75nZtyv/zARnC2Ixba+BphZvAses6Kakpg
	uTdhbLlrw6cRWUwYNKGPlY+BN0J0XcjyzIE6KOug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105b3d023-394b189d-d1d3-403c-958a-cc256403a8d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 741e2b91028baaf52bcb83ba8eb371666131694cea54390c747ba620d16dab8e
Date: Fri, 27 May 2022 13:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653658079
