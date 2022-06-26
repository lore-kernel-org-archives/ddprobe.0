Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C13A7A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 20:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656275812;
	h=To:Subject:From:Message-Id:Date;
	bh=Ychl3JYELPFcXwTRXYHB50fUfcsdcJKyQEelM22wk7E=;
	b=dB3kiKzcKqqwFUnQ12KbqjjJHQ/TLRM5QR5+3QWa3Iki9WTtLAvR0afkHCeuop+E
	PuQX30nHjZykvs8AAXxwXxGTK4pX5ArCs2h5K377qgEUU/ZCfR+QDAIx7Std0HmIXlT
	S3edQ37TTfiUqe9JribMjsGW043wsCjLaiKDarBg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656275812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ychl3JYELPFcXwTRXYHB50fUfcsdcJKyQEelM22wk7E=;
	b=XXt5jbxqzdUIKU0vmw/tLxyqH7RGk3PfYz/jChVVfG6EOEufb3GsuMqJpCyJrDev
	99g6ZaVRYdkGZT8NOLtnodq7gAGQVjjQf6yZukNdiQ/kf9kOaNyvs4f8tAuCd5uspf3
	YEVd+PTNNof/9++Rekl7a78bHZt0Ee5KmiQq+yXs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a1bb3fce-6b821b29-4a41-4faa-a2e6-be0e0da2122c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb11657d141438a259f68b74488348d80a45dbe41845e08b69a16e5d0300e436
Date: Sun, 26 Jun 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656275812
