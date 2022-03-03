Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037817E
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646321485;
	h=To:Subject:From:Message-Id:Date;
	bh=YS+0rWqv5yjvVAsWkZsd735WLZE8U7aRe5yC3WHFpCI=;
	b=MEl7Dr6IIyl10Jhu6f1wfIQcrQnuGpSAVX9T7J658GjKWH/GedkhOSCKL4gtqCI5
	h0c/NwfZdB2pStZho+8ogkIP+Oxc22huyJ45mbfRXAI5/2sBhIu/MbVNPFi6y3f6lxX
	9NhFvC+MPcCvnGH+SUsBiA0sJSdNznIDzfjSbyWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646321485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YS+0rWqv5yjvVAsWkZsd735WLZE8U7aRe5yC3WHFpCI=;
	b=ZTeMx+91eoP7WTaTAu9YAZybP9lRcwiuYGcwcxU5zqpybNe6lPs9wy1mQ+tHNWRL
	LklDiDHmKgmHSsCLeS0SJ6mr3F9uQjX8g+yWM+CPKhIWBNfZ9tNKElnAIouLNtFcshA
	5PcrbjWGjq8n2hW58Vy/Iy0B+r1SNF6AINun3Efk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f506843b5-a9d9847a-0140-49f6-81f9-e40108277ef9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 125525722030b6f2e38ac57c7d5873f15453ca5d83742c904ba9f820ee7e756a
Date: Thu, 3 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646321484
