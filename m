Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2858B7473
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656623812;
	h=To:Subject:From:Message-Id:Date;
	bh=S/Apg8KBvdsm/2GzIqo8gL7UUbrP+Frd8rdos8zybuI=;
	b=F/j+uslzumVA7o72OCv9IlfG1R7y+PwIStpGvomW2MvhZvlT1w+6QhAAyemq20nc
	RIzPuN+t0/EYiOFIZSkcNIchx0/eNXmsGyfLGxqohIl48kh0VW8GXqFIUgyNEAic85b
	SmcbZZOTixYZELczAyRiW+fdE1VNY3hdt9s8l2bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656623812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S/Apg8KBvdsm/2GzIqo8gL7UUbrP+Frd8rdos8zybuI=;
	b=Gtb8sxPco88qr/xFC7cI4IlBjJnwmbdXqEUWikMAnG4100MX9GwmE3znIVg0sEiF
	RceacgIJWBq3sm8qBhERy/9DwekocZPWNd65Fak85bLm+iT6mVU0pqUtwNN+0D8ect/
	2fAWhL08PzxgOr01nZgR0Zlq9P4omZILyqvVejKE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b6794f06-3d37097c-5f00-4ae7-9655-02a38b858bcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c830d2ebe89625b492cf22aa2635650b6c84dbd4e6f059cbe281ae72bd0ade3
Date: Thu, 30 Jun 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656623812
