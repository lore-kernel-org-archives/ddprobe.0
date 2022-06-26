Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3F719A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656216412;
	h=To:Subject:From:Message-Id:Date;
	bh=Or3KXbzFz2m34iXnZNbgg1Q8WUW9COrvSlxJL9ef0ys=;
	b=F9G5zFQqz9vsubJn0Qb2ddNFgWlJk386vehbEzAUqJhlEDUIMkNib5x/Zg29KpKe
	87swDc/87OwvZCoCpVQTttudt5vSww6q77EMir/3GyFdbG8n6KSH9ATZwJr5wCPHitX
	W/0C/5VrWPni0a0WPx2yHZj2FWgzU4XAp51Msdqs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656216412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Or3KXbzFz2m34iXnZNbgg1Q8WUW9COrvSlxJL9ef0ys=;
	b=dXa/ZJ1jy5ZDeye41JEa/jJH8S0HqlGPzLEv3cWpo4ndsP9B2HvsnkHdUH0TzRFy
	fVryf0SB1AJugfoKXnabz4M10d5s1erZK4DorN2X/yRCoG1IdbEx+uyhLwM43IIQMne
	accAFdbJbAGfXyAKC7eNo7pHly369/AqUonlRC0E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819e30e060-b44aa517-50f2-44ce-bf3a-b99704eeb818-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c02ae781e18e527671478344b6b89c3cae2882b696d0dae6f815eb8e83a8a5a
Date: Sun, 26 Jun 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656216412
