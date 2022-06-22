Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC243C02
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 20:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655929799;
	h=To:Subject:From:Message-Id:Date;
	bh=l3LiBElNwil/4RWm/BSZjfOSqvJbrzKoPxwnp8WJExI=;
	b=d7VnNJEpCSXZI+2dzjkINdeMTBaWvKkvWcMgclfwUij9ghoIRXbID9geJOGaZV3X
	x14JV/3hAAtgSlBC6c5/RThgv0kvAHTULpXGzraYe/ix8P6BCOgk/bLV/ycfZHmGEyq
	ubEGHQcUG1bxFDNFF/+LKmWbN7sBAadvOzrZ0s7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655929799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l3LiBElNwil/4RWm/BSZjfOSqvJbrzKoPxwnp8WJExI=;
	b=aIe/u/6VZCeIXGHpiRPYwJW/udG9/V+Rf5jWuFQ6WE1isOWq3MicTU/oeOUW3A+X
	c9W5wCQ4eHxW7VWxxK1Io01niDCombzI1Srdrelb/aRhJSytxYLlHXPRZEapge351O5
	QsKDzFOgO9VyIX27u/e+9fseVv+exf9CI3VG8Dso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818d1b8251-6973f9c6-e196-4dc1-91c6-6f6d38a31c1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3b80a6d6f5762045e341db7c1365f1edee65f1c3fc87d957f94dca32b4e691b
Date: Wed, 22 Jun 2022 20:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655929799
