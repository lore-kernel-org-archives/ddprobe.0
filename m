Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0543257E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 15:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644678030;
	h=To:Subject:From:Message-Id:Date;
	bh=InCnJuyR7Gzgby3mAtsDz+sQ0kxvLTs2fXiNliqReD0=;
	b=G4tpBfnytg4+cgQTlBejiuDs5pKRyZwirSLez6p15IvDhlI+Er8LMO4OYY9vcMXX
	vePsDiyNtvPuiNc+2EPwXj2bd/ByNDEmrwXVERWwGVj9OTN1AuO7qu9hl+5HcOMBTM2
	u6z9o/NJv2GlGfB8CWnhlorX8jXuRCX9boVITZQQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644678030;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=InCnJuyR7Gzgby3mAtsDz+sQ0kxvLTs2fXiNliqReD0=;
	b=FYCrrcZtuqLL2TZ3kEV+sVWpvMYArdn0JuF0ozAwS0TdR5vWzmW4gJbiTYBsbjW0
	LhNxRn3R4OmclvFHif9FLTtAszjE12NLCOjdVV5Gv+kfY9Y55o50zp9sDWX7wJrP6fq
	knkX5VEQqsU3wpVNdhLcufJ2Yn9CLrUuaFmETC+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eee732296-f69880ec-9038-4737-a0fb-4e1ee37d212f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47c48b09a7382fba1ee18086806b0f3ae422392722d552d994e4e2bfc6d411fd
Date: Sat, 12 Feb 2022 15:00:30 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644678029
