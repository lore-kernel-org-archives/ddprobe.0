Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB832C9D
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647002184;
	h=To:Subject:From:Message-Id:Date;
	bh=4XLc5LkSqYhKCkYKzfbOLCU2Y83+kWwWKQyNE1zRk/4=;
	b=SMkFFKnKuBsmafQjUA39IDoWLO3QgSevYqFUsv2BxfO6lvAPzOM8SIuJf1nxID6M
	+p0eh4XeqanqUUHnbiAQCBaMKm4KHMcGweZufznkyT5OuPCYinyDAEOdoA5NnW1uxnN
	X1ARcZ1Bh/MihRAtbmtZTKT8M24ZIDLNqaD+wB94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647002184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4XLc5LkSqYhKCkYKzfbOLCU2Y83+kWwWKQyNE1zRk/4=;
	b=gGhELv9fzaYSmZHTfhcWyxe8HWcUAoqSurgDRJkj28kTVXl9DxAeeRXcSKjcXi8K
	PBh1mFTzm0MwI3vrp+89Po6o3KDA6tve28e/fK6kCnP+nh18MDf2ybT73dlNTMBd9Fj
	Sim15zJ983DrvW5+X7kIBbQb0Ryx7qNZvQuFYfnw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78faec01-50a746e0-ef77-43a8-8c2b-5c7cdd3e5362-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de078b6787e51dbe73683592cc3f424c6862bea03c8b95ad1fbb21417af4fcf9
Date: Fri, 11 Mar 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647002184
