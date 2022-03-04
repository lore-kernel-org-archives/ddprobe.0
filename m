Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D607E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646360485;
	h=To:Subject:From:Message-Id:Date;
	bh=76CdxRJwreyDguPpEKU+EuM0vgP+1DYS5DWyxapqbzo=;
	b=VUFLvi03HupW6/BNkhN4epbI1SYgnwmYxx8GLjUeY/sa7B9m4RgtZ6mJK/rKCbzh
	CcNrcQRb+eySGXpv+47M8wG8Ims647a8k04Q2BWFYlKkyI5x6vaA3D+OVlIh78iQ/qF
	VIRFyKBhoEBlGsRtvkQHXY3BNjZlgKG10wwdB46g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646360485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=76CdxRJwreyDguPpEKU+EuM0vgP+1DYS5DWyxapqbzo=;
	b=f5eS5U39VQ2BPbnIoQQQr7MgElxaEDQ7KK+ajuuMq8ejPWZ7+IVu8IDKhBT9cIS8
	H4+C4xHYbxtee51HDSgfzv7PWFuwre0QAH+OaWDXzHBKsObxuYu5nx9F9QdUYMeYaaG
	ouGbb47pHmd0vYgIvapAAmYa/blCUVYu08EMVwVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52bb5bae-ec6880fc-54c2-4bd0-b92c-f9f8dc61934c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dc9a5621e3806b40da59a645aa0592a581fdf91c55f2bba205628ddfe01b843
Date: Fri, 4 Mar 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646360484
