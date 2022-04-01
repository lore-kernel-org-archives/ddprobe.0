Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDCC7B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 23:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648855078;
	h=To:Subject:From:Message-Id:Date;
	bh=90t9cue6Z3BxeuS31yDPAjYyVxUEFv5osaPirfTDjZ0=;
	b=jdPSTzv6/m+jbr4B2p22HXbZZARh5Qg1D1a3edZ4Dr3wLYysZJg2WUQTFYwtYb6Q
	YcL9Pa3Ok3VYOGwYZCn8xWI8x58AucTaW1jchMLtTJUKAVmrMw8LulODoinuA41nBuy
	h4nElHkCltTSas+VczdefdLrYHkddR7QalxNk5w0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648855078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=90t9cue6Z3BxeuS31yDPAjYyVxUEFv5osaPirfTDjZ0=;
	b=JJe5ysbgl8JmKNfZdtJ23xDUantVmF+wOAHWqYsNKPO7X8PTIkzC2r9N+2lxI88N
	rzGvxht0fd/VhVWEdwa5jLCkUGWa/vCIZn+9K7FzMS7PLIKMiy+xN6SAhPsSdMPznds
	dcIjK7xVE2C0g8wEmu7O/7BZAzwq4H674ZTRjZZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe76bd5b5-0b8ed4c8-d630-4bc0-94cc-ab3c9164c4d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a9ac37e775d3d02049ca9efbb2e93420ccccfd0daad8796eb6ac468cae95df0
Date: Fri, 1 Apr 2022 23:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648855078
