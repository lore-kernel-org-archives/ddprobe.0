Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137551FB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 15:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655998012;
	h=To:Subject:From:Message-Id:Date;
	bh=xYKbafcbyZ1OfL/oIAhWpcfkoN+wYRpWZxWxvcx5JYU=;
	b=AW0HPYz8quteaMlj7KhCsH2kEOLMMVnRWfeAUGhG/wzgLgwGUT6AiihMK/wjgEI8
	ibD0FCmPHTc6Bha2xLQKk0OyokcpISFMn7lSPVno/LzKu76MR0Xc4NLSA4hj+UF/AQ3
	ui6W1fcB0DoT5UfFOGorj8Fv3RTPHk0gWnalikIY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655998012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xYKbafcbyZ1OfL/oIAhWpcfkoN+wYRpWZxWxvcx5JYU=;
	b=Pub0CJB4aTGeSfTdbei0GaU05Zm7QrTMCZoK/Wwnat8g70fX/aigNvJf7W2TW3+d
	OzJMPOt4BOoTiqAGAvrpFdxPf7yg+zmBArRpPfBa3tHtY7PRsNxKI9IlV7FFyfPR+Y/
	U8BnAzKVsIx8Z7deph1vAbMtLp2+dgTtldBGLTjA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181912c5b8d-c73a607b-8365-4eab-8ed3-9125d1554a4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbfac8eec8bf6d20928154445d2a936528443c8847e6b01e04e8f96dcad37ca4
Date: Thu, 23 Jun 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655998012
