Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102862E92A6
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755092394; cv=none; b=Z2pHxWnqO4Lcfz/nDv71K4Qtm+p4i19pqtiFX7Z+7Nsa9m9BwH0akMnWmdVKCwXqXgpwIplFlNKwOqoVDkxhP3XxxndJw2AQJwFhEgNQxXrd2cRWk+/czMh4pMhkojN1hws6toXnmP+HLZSG/7wZYb3eAndF3e/YMnQh3Zh3VkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755092394; c=relaxed/simple;
	bh=VTKNWg/HFyPCqVZhYEsJ7CL1Ydcsf7+UvSPrYkCVwnM=;
	h=To:Subject:From:Message-Id:Date; b=nM4w84R/4Y08gZdZdbJyx1BcKy7WaDo7fpAsuXHLuo0+E7h0/7+LBVEVuj07ksH47toQMved6IhZ2QnqiQWCfoYckvYVXvscQCloH+LT2CP9IeUwjqCv/ojAfp0hE6DsPR+7ayAwS7ic2jtHFt4+LJNtUOeZXaXxV0RABohQM10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8jCIJSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8jCIJSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F172C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755092393;
	bh=VTKNWg/HFyPCqVZhYEsJ7CL1Ydcsf7+UvSPrYkCVwnM=;
	h=To:Subject:From:Date:From;
	b=H8jCIJSAPKGb0VA7X3xZL47ja5+RtjeM3oAV88VO70A9n5KDObDGWG75HcbRMJJAU
	 b9FNSuLMXXUgDbmi+PJ/mOc2HfYpdsb/UQ2T94h0UVF0mQSC6kcPB2KqTxraToqJ0C
	 MDNdka7veOnF9Cs+UybmzbV1dQVTW48m2ubhVWx/Nz6kOteFFEpR2IXgZIyareyUez
	 3sItvvCfa5K1ZSSURzJwEAqN39lDMdv07QHzMJimca1fkGYVb9AH9QxmWoBGgZPHA/
	 AnJj24DBNFhxTVSUU6BTBjPo+JF+uqpIspQ+oS/VF9BeMtxDzuUU0pievdWEJpA6Jg
	 eX2LW3C2ePu8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4AC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509239357.21733.15321861249412690750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf826ee624ef42b0737ff016146c302a674268c0e0ec31d1bb50b34d9423377e
Date: Wed, 13 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755092393
