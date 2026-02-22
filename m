Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226D9EAC7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771788894; cv=none; b=ZZIQMjeZWpQAZRvnYramDq0+gEB0+M+GOY03ALr8MZbFa7/rK4IbkHfd8NlUojnqy9yZZcyg6g3keKF8GoAGDesITQX3r0TVBzW7qpjYFOeZ12E+fE8nKWitnIACTZzkKP2O6DifMT4V/RzpRIba+4pzGuLKSu+bckzl+AqVF/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771788894; c=relaxed/simple;
	bh=oXwhStbvTRpIMDNcT8pFBLDCbkBWaAXwnIALsU/qWmc=;
	h=To:Subject:From:Message-Id:Date; b=iLn01yh9I3A7v7DyL945jDL043tfIePzSB+8XQ9QfmkCISynUSKP5dCEtlg5DCWph83sT2H/RQnKc3gnB8oirhIMDszS7Lbx2Ptk0fVlzk0xqtuSqkzVHBlOnnXNjg44Uubkt/I5RCdzqlB+hjsRgz8YlOGi5FcRS11Ux1uffVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWIGW5DJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWIGW5DJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB06C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771788893;
	bh=oXwhStbvTRpIMDNcT8pFBLDCbkBWaAXwnIALsU/qWmc=;
	h=To:Subject:From:Date:From;
	b=oWIGW5DJHO7ynaG3iypjKTt6yslgDkUYgoDJ7JNLVLvenkBTJuGFfJZmWnZBqmFqD
	 h6Euyvp0zR1P2BcoMNUD2ov2fBfH8/x1YjgJoV/4kveH0k0+QpNeWEeOLmzZt6Nu9Y
	 eOfLGmBdlwKB7/IKNZyGsnU2gTFQEuDrq9q40m2EoSYXFVUu56x7eoPQnQuDPUiDZS
	 kZXFv4q4eqVr4iJXQjHVylXKT2EHg2ED+cjbKXx2aC1Zs3oute6CWdwOubt5qzNIqK
	 ew6ahP3iLa68VhE/lpcU3X5NcCCHmKfhHllYKKUdYMCWJWPr4EagUBqfyN9r03Z/bi
	 DakeDXC/U2+sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9768AC636B3
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178889358.310.13588796709080588985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0328f24ecb9c7946435b7122b28c4925d35c52cfe7fb0a18aeceb24fef322557
Date: Sun, 22 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771788893
