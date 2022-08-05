Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66EB91C03
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659713452;
	h=To:Subject:From:Message-Id:Date;
	bh=uK4UwjTY/VClqsJyTXg11GOMDA1aH/x5i+zjkxQkLeA=;
	b=PGvMZGihEI6CPuk8Cwh6TL+jgaaJhjjLLv4ePM127iwdyBZCkhhD2bWM6K0Ta3/1
	6ddamk16G8JpYrUZ8fZ0E3kPjLrTYyOn3Kljuwequp87WD9qj3AT1jeWFet6dcNhBJQ
	agxvguuxNIP29amrJp5O8JkBSapzXbYj3E6Bc+yc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659713452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uK4UwjTY/VClqsJyTXg11GOMDA1aH/x5i+zjkxQkLeA=;
	b=OVrGn1vmZONU4QzaVW6l0XkZ7CQQIDxSr7UKF3IsxGqVm7efFV5GlkuEyW7Q3++l
	LDo9zOvlyWakXVIXGp9/4Xc010ZSf5KTuYjji/CleJVZTJNNusFzbrczaSvJ+9mi6Zs
	J63ehSpHXcFixwaQRfaGxlKSVU7ZKUS8MG89sh/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826ea17a7c-2971c1db-1232-4bef-bd03-b3b6ada0f5ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07e8e0b04d32d77aa51a6aadb952933b0691f92e18231e1ac8f88226f5e2729d
Date: Fri, 5 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659713452
