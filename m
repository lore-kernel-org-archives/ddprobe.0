Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBEE3D522E
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772031894; cv=none; b=pcXQJNx/O0p08T6JPEYEOuyk8nF+sRfNhp2CqICjI1YWvlPE8U4fk168JO76ZCy4Z7BGKfyjEWlZQXMMwbxCm5Bv0VS5CvCNTHKmCNGgQGnS09q3r1t/noOFqqbR7LURmUK7/j7IlrEHjAOyi59GRXdybrOg9xDvZtRZyUO9CEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772031894; c=relaxed/simple;
	bh=TCeX4QfKP5vy3LcXTU3XneJ4ujFD+fR1bli325b7fS0=;
	h=To:Subject:From:Message-Id:Date; b=hL57gDNOK0Ka7X1yIICgNUMWWpi5LoRurQzhEhD8xh75YoX/GGmeqzq7Ryz+k6N0Q8pmnvNVOy/whTcp9l/DV0Spotof4SCXyVKMKPTaYQS9//O5Yf4vefGMH9AA3iZOFaho3tVpaBLN0Gd/A/q5IsZEPF87UKELMxR3ASHy0LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZO98PDt1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZO98PDt1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B183AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772031893;
	bh=TCeX4QfKP5vy3LcXTU3XneJ4ujFD+fR1bli325b7fS0=;
	h=To:Subject:From:Date:From;
	b=ZO98PDt13HPrWTTa755TCyuQRjQosnGm6MnLOG6P7LbY/TOPTvlxMhEqMOOnpPGWV
	 PZtjWjf6hSMm1I8402DGhsOlrOwjgYg0dXYgiOPAX386GaSBKiUPQyQZHfCrIUlOLi
	 IbwEyS9FNuO5lK6id1xyQmG9/u/QLfIqyBLDijqzNWBElwB0gaFdxBKIJ3oodrEMac
	 TRyOANa6DKNG0YF60NweHvHxhfUB/XAvEaV9th2nkB+W9rH0TEjS93wDxVb2f+NqHv
	 XO7x03bemmK0lDXa8SKEHg7d6yxZkF5hh1/mAfiGhKxxvcV/9ZDZP+eeOE2qxbi4Kf
	 tNaIczmaate9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8A6FD3764
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203189362.3240.8297561959286133431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7118e03ddbc5e7062e434f8a8df58548c6c73ca06b843b9b8898f4c7b7dbb8
Date: Wed, 25 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772031893
