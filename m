Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44340A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644866975;
	h=To:Subject:From:Message-Id:Date;
	bh=4WzfGKHf/kcNem/u0bG2KF75BWi6h6eCBvgpBQvuLTE=;
	b=GdJGRgFEeetP9mN2S/sBVEbMqzCprby9tH1cS3TvpQEX69s71MQKJAxhUHChFOAl
	VvoXTTS4e/jJRaFNUSWWuIJ0653x4wluesXRQeWWUAFHmXq2st2cW5lElSlZhYqAEhw
	FQABK0+yZ6tEyJWPj/NlhmL4iRwpc0qTGKo8ciEA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644866975;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4WzfGKHf/kcNem/u0bG2KF75BWi6h6eCBvgpBQvuLTE=;
	b=la6IdxxjDZzzJj2n6bVpSkVhkVEK3VQfncbmSnM+b1ycHx63F1CH5JTpc+YldI/L
	jFtdZCrqGeYldpACU176X9HHgGiI9JwIySJoV5XMEzX/oQXp7/URm3jorJ8kf3uUc+f
	lynPCAaqJ0l5+LhCmtMx67wB8ZgAiU8kLfp/r0Oo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b6341d-2bcc182f-a228-43f1-8762-2da052c1a524-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1620c10c88f82654ca13450951e0d999bb38eebf68115ce3921acdda7424db9e
Date: Mon, 14 Feb 2022 19:29:34 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644866974
