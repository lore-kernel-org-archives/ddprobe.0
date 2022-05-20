Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E9C15AA
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 03:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653017279;
	h=To:Subject:From:Message-Id:Date;
	bh=smMUI+TPN9k7qaqU0AP7j3GyapetHRaADoejDsf5QVk=;
	b=Z/7drF4AmaVXVlK0H1BH05vBr1EOOCLtbab8vg9HCDIIzil+zjLAVcAuTB2L5Azn
	79RVeYgWDdOfUgSBFmVLWyiZrjQVDx7abmdPTJvpS/D/OE5FB582edkYmexKn4tDoKi
	5unib8glStLlZwahsoPFOioLePkuGsIxubUSYLX4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653017279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=smMUI+TPN9k7qaqU0AP7j3GyapetHRaADoejDsf5QVk=;
	b=cv2wrkYWejO4CQXOl1gw+sBdpkAqMcNmdIql+meF7ZNV48u0I8AzBZeUhp2BPH1Q
	Ce4TpjCIUp11eSWxZ0QHMLXn0HfQiN6wTl9hPohw+4ueSJ4EW64VLda1BFN1dKF6U0A
	KoYu0DRkTLRnhgfme0FgpPMKUQ72BN9GgTO+jRwE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df81fb05-98fd68ee-b451-40ca-8717-08e4bd48c434-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 865fb26cfec66bcf1d48eba5e96d9bb6542514401ab7cb4ee4bbf9f9ba6ba43e
Date: Fri, 20 May 2022 03:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653017279
