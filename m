Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D0F7B
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661247052;
	h=To:Subject:From:Message-Id:Date;
	bh=G3ZaFJZuNzq1+hajZZUcpkHzHkUntK8LEdHtfjUtbPo=;
	b=j/W5op/VxAY9/XtWLPEDVDAmz2K6c/NMjtD6TGe8ZcKQBMaGATMx50x7lo+dSzLZ
	kZNNXh8VGoY5bsi2yzmOS8S/ZsE7H92yYRDG7xb+tKaQkJfh8Ztj0JePhfSuRY19Zn8
	WxXaPyAWmtLPKMH3QPtVewYCB2X8RZMb3cBWpQDA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661247052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G3ZaFJZuNzq1+hajZZUcpkHzHkUntK8LEdHtfjUtbPo=;
	b=QknRnsRmKA0HCPIMkpV9Z+w9pqo6tUEM21TMh7QxlPKxrKNX8/3HmMWOjQky1+0d
	6UZvz71N3V6+A9m3Lu5RJFD5CPu5jfp0ufL2gH8mUse1nFqg/UBlOFzToqq72EPjdz4
	bqMDERpB1sSllvfkmASB7p79lMhjyGW0cPQ2h8+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ca0a5b5b-f050d8ee-7988-49b2-aec8-e49e31291619-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 933afc5a09fc48f5f1c459b1c8c4a524723b5937383eb88a411d4e5aa5a2ed8f
Date: Tue, 23 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661247052
