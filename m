Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2085E7A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 05:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656308812;
	h=To:Subject:From:Message-Id:Date;
	bh=B6uidC3s+GsEmyCJmg8vc6/i12963GFAqRW0bHwbcg0=;
	b=lXQi9RTWjo4McMgBZLN6n3u64vPzK04nVDKEOYk6kzrcXE4XfcSi/LDXuEAh1m9z
	K/s1NdT68CFiKbVjL7vmyLzU8kEdBwh3ypYQsHeq7YOReQViE4bse7Y/M/SEnZ44A+7
	K76N6DMph4SFIjkdC1v91A4GQlvYdE8CSslhzL64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656308812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B6uidC3s+GsEmyCJmg8vc6/i12963GFAqRW0bHwbcg0=;
	b=SBgEpDowEo8JpdBg8EXVMaLDSx6nNDPQTdgUPwqEyFm02lmGBAsWaIaKN103DI2p
	Mo5kZxjXBKxhpIgw8VMHQoE1ld0Td2edQJx+h1QxUnBOnF8NrUNcva1HJ+1qRGIM3So
	YxVtyEP09fZSmYN1lrqhFiG9zHdOfauj24jE/vvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3b2ca04-6dc4f984-f9a6-42da-a5c5-81d83843daa6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc9ec39e608d8d435c291c4c01f5ebb86f27d68771237511befc292ebb2b4d2d
Date: Mon, 27 Jun 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656308812
