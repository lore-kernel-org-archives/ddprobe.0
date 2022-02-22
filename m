Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772552568
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645520484;
	h=To:Subject:From:Message-Id:Date;
	bh=rHlyBCFc2eU6t8KAOIoNmHQ43GJWH+A6sqlOWl/DnjE=;
	b=m7G8+L892S2Sw+F72F0/bA55Gd9lTqJ5bl9SHfT9X8GvGBuAPIhmU0Ixqj9d9tlZ
	UjXPP5WMc/vFIDi+cvNyT8K+bJBtMHMw+P8zIPrs0Vm4Co+9J06hUGuYXGe36dlu7DJ
	DWDDbY0PXHgmbUVQkQqJzvGULODQ1aFF3IvQ9Y9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645520484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rHlyBCFc2eU6t8KAOIoNmHQ43GJWH+A6sqlOWl/DnjE=;
	b=ja8A990dFp0pEzfRVxKtbaM8hj+jBwwifdAZne0QKXXs9GqnUqIbZFltX3ej5B+d
	nyqz7RwbwrnHRolsY9aoN2JVNQzv8Vy+QtCScC+OhScJNLe4Bp8U82KBo2BAu1DTOWi
	2udv1TQgdB6ywteJHEB3OywF2A9HB5Ag45vEZiAk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f20a9f987-66187fed-9157-490f-841c-387a9452f5ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b816cc6552448c586d41537188ea9008d074f0c94cd11d0d73a42d39f861ab93
Date: Tue, 22 Feb 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645520484
