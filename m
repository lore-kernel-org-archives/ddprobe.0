Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA977E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646967984;
	h=To:Subject:From:Message-Id:Date;
	bh=NaIJpJkQP/Lfi19pEhOy2xOT81Zzziqd9OJDFr6+hv8=;
	b=PyLfxKM5WcCVRuaqsJ0TPqaKFFcwYAvs4wtaJZn0xEb6e0zYgzUCMv39j1BtMfPn
	bybAowIC8hgq36qTfB/YhqzRNGKzoxkLzMIZORX1pG6PMUJtoVvsDNGmT5Nhk3yC+Sv
	4DkGsy/hM9OegBwXPQv+Hv9axVufdA+6n7HIUtTY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646967984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NaIJpJkQP/Lfi19pEhOy2xOT81Zzziqd9OJDFr6+hv8=;
	b=gsqspb8wrqi/V/rU7rHVcrk3OyIEf9k0peAJ0d5COLJawlkkv5Ngh0I7mgRvUxOt
	RWLylM0sW14+9PP7J9XYhjwBhYLp938Jpt3NPzNacNaelPDqj/plwBvqi1mw/MIZ7v9
	Y6mJDgpB2/RXP4pmIjqRiT3wgiVL+hD1XEzSS4Bw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76f11247-2db20ecb-0709-4f5e-9092-f6558f4eb03b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb0b26ddd0d4975890afdb191038c31584dd38d1892eb264c71c64eb2726d162
Date: Fri, 11 Mar 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646967984
