Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3FC7B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 22:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645828285;
	h=To:Subject:From:Message-Id:Date;
	bh=atKArYIpCHMzzf6/ER9L2YESuVgcdgSjuKn1Rbwv8+w=;
	b=jLPKE5EU9fdjeeKIrHsNzPjPx0o8F10oYCsbBFZ3h+71Z0PUaaA7cCYU+Fzil2tw
	29zbvildYv7kK0SE+Kgy7bD9VsBKEUWmw0Xo5cs4DlR6OydzehdYGIMAiIfcjojUCS6
	bBv2LjpXcmvWK4zJdqfretOMGeuQlyiLGFtHEYE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645828285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=atKArYIpCHMzzf6/ER9L2YESuVgcdgSjuKn1Rbwv8+w=;
	b=aPcWPa8tb6MTgwRKjqc86KC02AKwy2RMyjrOijWu+ZS60G5DDtpAnK3EXEV5HNSq
	jbUZyq7zRiuk+R6k+hs/TrNLUG9I5NQCJtzu9qey9/SwkufxXryv72C4AMq2DVSIYvd
	FnsB1tuN7syGdaFodXXcjUsla7J1woS16aSFU76E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3302a176-0e36c17e-76af-4433-a367-e9e0e6627df8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be611bdb1b81ef7a68bc4574f62d7f2ebac7610b7f928ee1d2e263164c00833f
Date: Fri, 25 Feb 2022 22:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645828284
