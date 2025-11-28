Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2597917736
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764322974; cv=none; b=hcS6WjwLH3yRkIvC9rWfbf593MQP2qfud+4d5AvXSdp1IH1FyzYgGdP2R9uTQBiJHUDAt9oh3z5OqFZ7CgcbJ9gaGFCZtDoZ3F7r8uu1EU+fCG1Dhkf73T//7HBpesP4jIaTwp09Xy3HfdnE4dnzEST6tAkiAgJBX36Vp77lwIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764322974; c=relaxed/simple;
	bh=/pEXZVPo/FpelXtSsUU9P4hG8cDph6ZTSWg0UVM0/dY=;
	h=To:Subject:From:Message-Id:Date; b=n5DUnwoPjBHo1l3Mn5NIj0cQbeC92RwkYfCvmD1Lhk0TJUEMfDAnpubtPcS/uucOTF4nG0F9X2NK6U6KLw68sDURG20iwCGGzwpxHD6fI5jo656lA0mRL8zdydl7SVbechoJx0uVUGs7NcumDrP1K7CsiJqoY0JO+JkuWuCrO0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7+TAO37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7+TAO37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12A4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764322973;
	bh=/pEXZVPo/FpelXtSsUU9P4hG8cDph6ZTSWg0UVM0/dY=;
	h=To:Subject:From:Date:From;
	b=u7+TAO37eIAv3Ms6AsPo8tN3Jvx8RKHqfS9Azz61jze0QimZG2cXC3GBkyPBI7XA4
	 i5p+G162U1wSMw/Km5Jg+3jpetINKWZhhy94sGh1Jk8xBAbpqzGXstzFtR+jPBNS5y
	 yeMqQMWXVB2BP4UTXL40FSSIdf42/DftBvghcmmlTzGTNHpjfglymaVRVEu4VgcnD1
	 KjTPP3/Ayt3frQjt4I7Q+v+j4wqlVfYTuexm8W5J+ypLO9dR7WhATAtPOmXoEFLPcZ
	 E+0Rqb5KPWGUMNSU5C+Z8FYqe+MwwDU9FAd4RNFKuPSIuoO9Yo/HqBoOau+BxMgzrD
	 5cMTjJbjPmlWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F853CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432297358.8821.16997327527359880091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797267c6d5c5c8cf4fc72d94f78fc5168870fde5f6fd59eb583d860a6314e9f8
Date: Fri, 28 Nov 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764322973
