Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8041666D3
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645557985;
	h=To:Subject:From:Message-Id:Date;
	bh=wc+TDcxqYx14rPMvlR2lZRdOtXounLXd0K2CiqtKJfs=;
	b=bxBuQyWWR29Ro1ztzjjM1wobi887CRZsamCphbChFzlZrVsj8t36CdlBJK1JuQ9/
	zlFyAVI9EREsItCBbyRs9S4MmgUTenIMQfAacntJqJ/JF/aeTUVuX3+ph5bqYLLoJKY
	Kt361Y8z3dxvXHJxjYSuL/BgZXIG7O+za5kYWBXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645557985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wc+TDcxqYx14rPMvlR2lZRdOtXounLXd0K2CiqtKJfs=;
	b=AtGL7sRv5wG6uFoB5OiQcBBXQ+qgvwsM3uC4lWQYgVYtI/DqJTq5GBfRJO9bCS3A
	1O9d+WgirJDmqHwm15XZeia8CwdgtPTFanX0rgC8l3574m1ScfjhdMmvtb5NY7RwzWI
	4bI2qeLxkIftnmSsfKHV5rYYRJR55ytvB4veZLHc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22e62e3f-d272684c-03c3-43f5-af78-ddd42ca48e70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7a2d288e56f10f1d12c7dfee0e4d57c06eeec3caa8b65527be7ec8af06edd88
Date: Tue, 22 Feb 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645557984
