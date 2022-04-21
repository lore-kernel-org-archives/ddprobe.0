Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347AE1FA1
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 09:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650534838;
	h=To:Subject:From:Message-Id:Date;
	bh=2jR6Nmi07R/f9aCF8KTKUEoyOvvZ7MQm9tkDG1D3tE0=;
	b=SukbBeHvHKiF0NzkcI8NHRT0/fDrJieXxVfC8fGMb7IpKVJDctLx8TUL6djApsgu
	jusR4hlBaRKb/YznPykIYKXhoQwBvzXVPc9QPjnXaoP6Ts+zC8/CC5OehDJBvN5du5c
	9WATk+hR0YxvanRyCjHNzyPxsIcYnYkwlFKDu9c8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650534838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2jR6Nmi07R/f9aCF8KTKUEoyOvvZ7MQm9tkDG1D3tE0=;
	b=DcKlDybSjwGfmei0znYejeNokqs5xMobqLPu8/BVTnYX7VW+Y6TXRTrnOiOF/Yrf
	6t9HCCaG95ugceW/xLX3RT1wwzeucnb5XqHX1UQdAr28fizynAVGxgJuU9ZY5pkaYRO
	bmdND+xcMLOuT2pbr9Bf7r6HEggs7KYJLdzmwg5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804b8af038-f98606f8-0f21-4228-86f7-858149b17b99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9be157e0c00b33ffcae9f727126f9b1ac17c38dcf15b6c5d34695ef9c33cf0ee
Date: Thu, 21 Apr 2022 09:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650534838
