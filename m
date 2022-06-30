Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3917462
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656619612;
	h=To:Subject:From:Message-Id:Date;
	bh=sjxEtfYyCv5se/zzciOllyVhlR2sd4An20asDIUlPg0=;
	b=iWgWRfd6wWfkMt2RsT88lQQbfVqfZDMeoEvv1HEwHCC5li1OA4d7mVJGkpGBkgiD
	SWTnTAvmIOvZ4LhKGkWwZt5/wqbRaIb/QVxqNPdlXYGAkskXAgPb0Ljb+d2wiifH7Cd
	7TB23TVnARHcSmVw/i8/vUfaNcfehBDIcGutfVFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656619612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sjxEtfYyCv5se/zzciOllyVhlR2sd4An20asDIUlPg0=;
	b=NVyxnK3vRLzraWUIpe8YVojW7VqAVftunycJAhyh3U/QQvEWiJcSxsOVfuCozqJU
	IS4BkFm0c4EK+K/A8zlVxFtJrgqtqfuQhvHs3d6WA4B9Jzj61Kk9Q2JntVdWb4skaKj
	3TuWAwGPYd5GmIE3FL+AZGc/OwgD4RgvAgaoEx/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b63938a0-e177f74c-a18c-49af-af27-5c03b75648ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82896b402c40bb40f1fab36992d27b4ffd3fac666589e4187443fc417b61c6ab
Date: Thu, 30 Jun 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656619612
