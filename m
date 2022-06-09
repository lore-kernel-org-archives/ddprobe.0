Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AA07A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 04:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654749599;
	h=To:Subject:From:Message-Id:Date;
	bh=t5cRFHb05wKGNHl/Zh8UAu7mHSCY0QJ4qBE/jXCyJfM=;
	b=ipPO4rutkrTZ5S85Dv1jyOk4nf6Y/gbhwAJ4QMKQ40O0hj4KS3i4P2ScIexaZ5UE
	RUg/fmw9w4IEdSL9fXVSb/siD6wOXbCGticQqm5DKiUiJtk5BYRaIl8bcMw2wCqoOLb
	6igakjYV7RQe/QTaxWiIy6Pp3nuPZ8M309I/slrU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654749599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t5cRFHb05wKGNHl/Zh8UAu7mHSCY0QJ4qBE/jXCyJfM=;
	b=Ft/XnowHWUiMjlCi9nY4WlaiPefuZR+KdubWhrJ4Yy+NpRvY1OANnVjg89uPRiP4
	HkYZs3xq1NUQPjaH2cn7THB8QqRzJrJVhv3Ed7XkuV4eOI1n8XY3OSW+z6T3pjuNvWH
	HEZ7D6LFqMYWyeKBxzW1332YfIAn2fk+mhReqBx4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018146c315fd-c903860b-5c5d-4a1c-a99b-ba85722564ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc68b3aabbc2c83522391772d896cbba51ee3a186490ecdd0d6d1de1ba7eb20d
Date: Thu, 9 Jun 2022 04:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654749599
