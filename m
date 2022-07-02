Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48723D8E
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 18:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656786412;
	h=To:Subject:From:Message-Id:Date;
	bh=o6yJN2pAM8D9Y+b/zbbEw3SLQdKs25PTNHDY+9eQhsg=;
	b=KzK10oeSZDckW5PIc+HxgSKX8WzuRqwu2LxEUhOrIP7C9KOdnAVXgEwEoQNdtCsA
	nOe5OL6VSX6iibQ/gUU/qCY800SMQKdtnX+0zFAvs2Zi++/zt3Q83/pTgqmRw2ft3zs
	IracppcAchky/nF+tAkQZd3YzehHan8q/oLt+QhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656786412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o6yJN2pAM8D9Y+b/zbbEw3SLQdKs25PTNHDY+9eQhsg=;
	b=OWEWTbN6yL9zWWUwGu2wCb1W06S7LJfYMC6U7srvU91vEo8XgW2CiTjmGGVoVBtH
	F/HWoPpbTbna3mpC495wHh6Z3VQHRyiSJgGRgfMnwKXbOLDhPKZ37x+riEPk3FKZ+BL
	xkJS4aMclg1F1bY4lHXoFUc7c/8kTM76v2aGnhEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c02a6300-459caca8-bf00-40ab-a6b5-74a7edf6b6d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b4bbc9d26c3c98f3b37a21a0e57bfc89568c0f2b271afe0d408f20fed419831
Date: Sat, 2 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656786412
